document.addEventListener("DOMContentLoaded", () => {
  const kyveraInfo = document.getElementById("kyvera_anatomy_lore");

  document.querySelectorAll("#detectors [data_part]").forEach(el => {
    el.addEventListener("click", () => {
      const part = el.getAttribute("data_part");
      const filePath = `html/${part}.html`;

      fetch(filePath)
        .then(response => {
          if (!response.ok) throw new Error(`Failed to load ${filePath}`);
          return response.text();
        })
        .then(html => {
          kyveraInfo.innerHTML = html;
        })
        .catch(err => {
          kyveraInfo.innerHTML = `<p>Error loading anatomy data: ${err.message}</p>`;
          console.error(err);
        });
    });
  });
});
// Script created by ChatGPT after prompting it like 500 times