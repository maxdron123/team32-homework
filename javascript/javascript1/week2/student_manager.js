const class07Students = [];
function addStudentToClass(studentName) {
    if (studentName === "") {
        console.log("Please enter a valid student name");
    }else if (class07Students.includes(studentName)) {
        console.log(`Student ${studentName} is already in the class`)
    }else if(studentName === "Queen") {
    class07Students.push(studentName);
  }else if (class07Students.length === 6 && studentName != "Queen") {
    console.log("Cannot add more students to class 07")
  }else {
    class07Students.push(studentName);
  }
}

function getNumberOfStudents() {
  return class07Students.length;
}