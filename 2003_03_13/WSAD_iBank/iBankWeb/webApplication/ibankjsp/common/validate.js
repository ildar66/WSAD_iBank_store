//+��� �����?:
function isDigits(s)
{
	for(var i = 0; i < s.length; i++)
		if(s.charAt(i) < '0' || s.charAt(i) > '9')
			return false;
	  
	return true;
}
//+��� �����?:
function isNumber(s)
{
	return isDigits(s);
}

//+ ��� ������?
function isCurrency(s)
{
	var curparts = s.split('.');
	
	if(curparts.length > 2)
		return false;

	if(!isDigits(curparts[0]) || curparts[0].length > 15)
		return false;

	if(curparts.length > 1)
	{
		if(!isDigits(curparts[1]) || curparts[1].length > 2)
			return false;
	}
		
	return true;
}

//+ ��� ����?
function isDate(s)
{
	var a = s.split('-');
	var d = new Date(a[0], parseFloat(a[1]) - 1, a[2]);
	return (!isNaN(d)) && (parseFloat(a[2]) == d.getDate()) && (parseFloat(a[1]) == (d.getMonth() + 1)) && (a[0] == d.getFullYear());
}

//+ ��������� ������ ����� "f":
function field_select(f)
{
	if(f.disabled == true) return;
	if(f.type == 'hidden')
	{
		f.form[f.name + 'dd'].select();
	}
	else if(f.type == 'select-one')
	{
		f.focus();
	}
	else
	{
		f.focus();
		f.select();
	}
}

//+ ��������� �������� ����:
function field_get(f)
{
	if(f.type == 'select-one' && f.selectedIndex != -1)
		return f[f.selectedIndex].value.toString().length == 0?f[f.selectedIndex].text:f[f.selectedIndex].value;
	else
		return f.value;
}

function field_disable(field, value)
{
	if(field.type == 'text' || field.type == 'textarea')
		field.readOnly = value;
	else
		field.disabled = value;
	if(field.type != 'button')
		field.className = value ? 'disabled' : '';
}
//+ �������� ����:
function field_check(field, caption, fieldtype, required, regexp)
{
	if(field == null)
	{
//		alert('���� \'' + caption + '\' �� ������� � ���������.');
		return true;
	}
	
	if(caption == null) caption = field.title;
	
	var value = field_get(field);
	
	if((value == '' || value == '//') && required != true)
		return true;

	if((value == '' || value == '//') && required == true)
	{
		alert('���������� ��������� ���� \'' + caption + '\'.');
		field_select(field);
		return false;
	}
	
	var check = true, checkmsg = '';
	
	switch(fieldtype)
	{
	case 3: // number
		check = isNumber(value);
		break;
	case 6: // currency
		value = value.replace(/,/, '.')
		field.value = value;
		check = isCurrency(value);
		break;
	case 7: // date
		check = isDate(value);
		checkmsg = '\n���� ������ ���� � ������� ��-��-����';
		break;
	}
	
	if(regexp != null)
		check = regexp.test(value);
	
	if(!check)
	{
		alert('�������� �������� � ���� \'' + caption + '\'.' + checkmsg);
		field_select(field);
	}
	
	return check;
}

//+�������� �� ��� ���?:
function isINN(s)
{
	if(s.length != 10 || !isDigits(s))
		return false;//����������!!!
	
	var weights = Array(31,29,23,19,17,13,7,5,3);
	var k = 0;
	for(var i = 0; i < 9; i++)
		k = k + parseInt(s.charAt(i)) * weights[i];
	k = 11 - (k % 11);
	if(k > 9)
		k = 0;
	return (parseInt(s.charAt(9)) == k);
}

//+�������� �� ��� ������?:
function isAccount(bic, account)
{
	if(bic.substring(bic.length - 3, bic.length - 1) == '00')
		s = '0' + bic.substring(bic.length - 5, bic.length - 3) + account;
	else
		s = bic.substring(bic.length - 3, bic.length) + account;
	
	if(s.length != 23 || !isDigits(s))
		return false;
	
	var weights = Array(7,1,3,7,1,3,7,1,3,7,1,3,7,1,3,7,1,3,7,1,3,7,1);
	var k = 0;
	for(var i = 0; i < 23; i++)
		k = k + parseInt(s.charAt(i)) * weights[i];
	k = k * 3;
	return ((k % 10) == 0);
}
//+ ����� ����:
function date_onchange(e)
{
	var name = e.name.substring(0, e.name.length - 2);
	e.form[name].value = e.form[name+'yy'].value+'-'+e.form[name+'mm'].value+'-'+e.form[name+'dd'].value;
	if(e.form[name].value == '--')
		e.form[name].value = '';
}
//+��������� ��� ����� ����� �������:
function date_set(e, value)
{
	var dparts = value.split('-');
	e.form[e.name + 'yy'].value = dparts[0];
	e.form[e.name + 'mm'].value = dparts[1];
	e.form[e.name + 'dd'].value = dparts[2];
	e.value = value;
}

//+ ����� �������:
function period_onchange(e, from, to)
{
	if(e.selectedIndex == 0) return;
	var period = e[e.selectedIndex].value.split(',');
	date_set(e.form[from], period[0]);
	date_set(e.form[to], period[1]);
}
