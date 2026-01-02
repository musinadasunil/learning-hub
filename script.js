// Recent entries data
const recentEntries = [];

// Render recent entries
function renderRecentEntries() {
    const container = document.getElementById('recent-list');
    if (!container) return;

    if (recentEntries.length === 0) {
        container.innerHTML = '<p>Start your learning journey by creating your first entry!</p>';
        return;
    }

    const html = recentEntries.map(entry => `
        <div class="entry-item">
            <span class="entry-date">${entry.date}</span>
            <a href="${entry.link}">${entry.title}</a>
            <span class="entry-topic">${entry.topic}</span>
        </div>
    `).join('');

    container.innerHTML = html;
}

// Initialize
document.addEventListener('DOMContentLoaded', () => {
    renderRecentEntries();
});
