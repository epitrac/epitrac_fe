async function changeInfo(state) {
  let response = await fetch(`http://localhost:5000/api/v1/disease_cases?state=${state}`);
  console.log(response.json)
  let data = await response.json();
  console.log("1", data)
  console.log("2", data.data)
  // let data = JSON.parse(info);
  document.getElementById("info").innerHTML = data.data.map(disease => "<br>" + disease.attributes.disease + ": " + disease.attributes.current_week_cases);
}

function resetInfo(data) {
  document.getElementById("info").innerHTML = data
}
