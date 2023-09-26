function FolderEnd()
{
	document.write('</span>');
}

function FolderStart(folder)
{
	if(folder.indexOf('_new') > 0)
	{
		document.write('<span class="link-new">');
	}
	else
	{
		document.write('<span class="link-old">');
	}
}