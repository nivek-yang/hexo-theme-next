hexo.extend.filter.register('truncate_lines', function(content, lines) {
  const contentLines = content.split('\n');
  return contentLines.slice(0, lines).join('\n');
});