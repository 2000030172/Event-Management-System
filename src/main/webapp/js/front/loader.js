function loader() 
{
    setTimeout(showPage,2000);
}
function showPage() 
{
    document.getElementById("loader").style.display="none";
    document.getElementById("myDiv").style.display="block";
}
function newTabClose()
{
    document.getElementById('id01').style.display='none';
}
function newTabOpen()
{
	document.getElementById('id01').style.display='block';
}