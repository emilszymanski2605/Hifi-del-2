fetch('http://localhost:1337/products')
.then((response) => {
   if (response.ok) {
      return response.json();
   }
})
.then((json) => {
   let list = `
      <table>
         <tr>
            <th></th>
            <th>id</th>
            <th>navn</th>
            <th>pris</th>
         </tr>`;

   for (let i = 0; i < json.length; i++) {
      let price = json[i].product_price;
      price = price.replace('.', ',');
      list += `
         <tr>
            <td>
               <a href="?action=edit&id=${json[i].product_id}" class="button edit">ret</a>
               <a href="#" class="button delete" data-id="${json[i].product_id}">slet</a>
            </td>
            <td>${json[i].product_id}</td>
            <td>${json[i].product_name}</td>
            <td style="text-align:right">${price}</td>  
         </tr>`;
   }

   list += `</table><hr>`;

   document.querySelector('#productsList').innerHTML = list;

   // lokaliser alle slet knapper, og tilføj en slet funktion
   let deleteButtons = document.querySelectorAll('#productsList a.delete');
   deleteButtons.forEach((button) => {
      button.addEventListener('click', sletItem);
   })
})
.catch((err) => {
   console.log(err);
})
});