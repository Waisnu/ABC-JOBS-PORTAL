const experiences = document.querySelector("#experiencesMD");
const educations = document.querySelector("#educationsMD");
const exBtn = document.querySelector("#exBtn");
const edBtn = document.querySelector("#edBtn");

exBtn.addEventListener("click", () => {
	const position = document.querySelector("#position").value;
	const startDate = document.querySelector("#startDateEX").value;
	const endDate = document.querySelector("#endDateEX").value;
	const companyName = document.querySelector("#companyName").value;
		
		experiences.innerHTML = `
<div class="d-flex align-items-center">
    <i class='bx bx-map-pin fs-2'></i>
    <div class="p-3">
        <h4>${position} (${startDate.split("-")[0]} - ${endDate.split("-")[0]})</h4>
        <small>${companyName}</small>
    </div>
</div>`;
	});

edBtn.addEventListener("click", () => {
	const intitutionName = document.querySelector("#intitutionName").value;
	const startDate = document.querySelector("#startDateED").value;
	const endDate = document.querySelector("#endDateED").value;
	const educationName = document.querySelector("#educationName").value;
		
		educations.innerHTML = `
<div class="d-flex align-items-center">
    <i class='bx bx-map-pin fs-2'></i>
    <div class="p-3">
        <h4>${intitutionName} (${startDate.split("-")[0]} - ${endDate.split("-")[0]})</h4>
        <small>${educationName}</small>
    </div>
</div>`;
});