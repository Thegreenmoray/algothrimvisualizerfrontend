import express from "express";
const app = express();

app.use(express.static("public"));

//app.listen(3000, () => {
//    console.log("Frontend running at: http://localhost:3000");
//});

const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Frontend running on port ${port}`);
});