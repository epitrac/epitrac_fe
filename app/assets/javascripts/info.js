async function changeInfo(state) {
  let response = await fetch(`https://epitrac-be.herokuapp.com/api/v1/disease_cases?state=${state}`);
  console.log(response.json)
  let data = await response.json();
  console.log("1", data)
  console.log("2", data.data)

  let sortable_diseases = [];
  data.data.forEach(function(disease) { 
    sortable_diseases.push([disease.attributes.disease, disease.attributes.current_week_cases])

  });
  let sorted_diseases = sortable_diseases.sort((a, b) => b[1] - a[1]);
  document.getElementById("info").innerHTML = sorted_diseases.map(disease => "<tr><td>" + disease[0] + ": " + disease[1] + "</td></tr>");
}

function resetInfo(data) {
  document.getElementById("info").innerHTML = data
}
