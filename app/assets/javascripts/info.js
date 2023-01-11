async function changeInfo(state) {
  let response = await fetch(`https://epitrac-be.herokuapp.com/api/v1/disease_cases?state=${state}`);

  let data = await response.json();

  document.getElementById("state_name").innerHTML = state;

  let sortableDiseases = [];
  data.data.forEach(function(disease) { 
    sortableDiseases.push([disease.attributes.disease, disease.attributes.current_week_cases])

  });
  let sortedDiseases = sortableDiseases.sort((a, b) => b[1] - a[1]);
  document.getElementById("info").innerHTML = '<tr><th>Disease Name: # cases for the week</th></tr>' + sortedDiseases.map(disease => "<tr><td>" + disease[0] + ": " + disease[1] + "</td></tr>");
}

function resetInfo(data) {
  document.getElementById("info").innerHTML = data;
  document.getElementById("state_name").innerHTML = null;
}
