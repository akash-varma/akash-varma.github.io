function openSign() {
  document.getElementById('sup').style.display='block'
}

function openLog() {
  document.getElementById('lin').style.display='block';
}

function closeSign() {
  document.getElementById('sup').style.display='none';
}

function closeLog() {
  document.getElementById('lin').style.display='none';
}

// ------------------------------------Validation-------------------------------------------------------------
function isNumberKey(evt)
{
	var charCode = (evt.which) ? evt.which : evt.keyCode
    if (charCode != 46 && charCode > 31	&& (charCode < 48 || charCode > 57))
    {
      alert("This Field Cannot Contain Alphabet");
      return false;
    }
        return true;
	}

    function onlyAlphabet(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
        {
          alert("This Field Cannot Contain Number");
          return false;
        }
            return true;
    }
