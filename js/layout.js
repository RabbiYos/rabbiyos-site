async function loadComponent(id, file) {
  const el = document.getElementById(id);
  if (!el) return;
  try {
    const res = await fetch(file);
    if (!res.ok) throw new Error(`Failed to load ${file}`);
    el.innerHTML = await res.text();
  } catch (err) {
    console.error(err);
  }
}

document.addEventListener('DOMContentLoaded', async () => {
  // הדף מגדיר את הנתיב דרך meta tag — ברירת מחדל: שורש
  const base = document.querySelector('meta[name="site-base"]')
               ?.getAttribute('content') ?? '';

  await loadComponent('site-header', base + 'header.html');
  await loadComponent('site-footer', base + 'footer.html');
});