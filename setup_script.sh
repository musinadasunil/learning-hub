#!/bin/bash

# Learning Hub Setup Script
# This script creates the entire directory structure and files

echo "🎓 Setting up your Daily Learning Hub..."
echo ""

# Create main directory
mkdir -p learning-hub
cd learning-hub

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p topics/{programming,mathematics,machine-learning,design,languages}
mkdir -p templates assets/images assets/diagrams

# Create README.md
echo "📝 Creating README.md..."
cat > README.md << 'EOF'
# 🎓 Daily Learning Hub

A personal knowledge base documenting my daily learning journey across various topics.

## 🗂️ Topics

- [Programming](topics/programming/index.md)
- [Mathematics](topics/mathematics/index.md)
- [Machine Learning](topics/machine-learning/index.md)
- [Design](topics/design/index.md)
- [Languages](topics/languages/index.md)

## 📊 Learning Stats

- **Total Days**: 0
- **Topics Covered**: 5
- **Current Streak**: 0 days 🔥

## 🌐 View Online

Visit the learning hub: [https://yourusername.github.io/learning-hub](https://yourusername.github.io/learning-hub)

## 📝 How to Use

1. Each day, create a new markdown file in the appropriate topic folder
2. Use the format: `YYYY-MM-DD-topic-name.md`
3. Link related topics using relative links
4. Push to GitHub to update the website automatically

## 🔗 Cross-Topic Connections

This learning hub uses bidirectional linking to connect concepts across topics. Look for links like `[related concept](../other-topic/file.md)` to explore connections.
EOF

# Create index.html
echo "🌐 Creating index.html..."
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Learning Hub</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>🎓 Daily Learning Hub</h1>
        <p>Documenting my journey of continuous learning</p>
    </header>

    <main>
        <section class="stats">
            <div class="stat-card">
                <h3>Total Days</h3>
                <p class="stat-number">0</p>
            </div>
            <div class="stat-card">
                <h3>Topics</h3>
                <p class="stat-number">5</p>
            </div>
            <div class="stat-card">
                <h3>Streak</h3>
                <p class="stat-number">0 🔥</p>
            </div>
        </section>

        <section class="topics-grid">
            <div class="topic-card" data-topic="programming">
                <h2>💻 Programming</h2>
                <p>Software development, algorithms, and coding practices</p>
                <a href="topics/programming/index.html" class="btn">Explore →</a>
            </div>

            <div class="topic-card" data-topic="mathematics">
                <h2>📐 Mathematics</h2>
                <p>Mathematical concepts, proofs, and problem-solving</p>
                <a href="topics/mathematics/index.html" class="btn">Explore →</a>
            </div>

            <div class="topic-card" data-topic="machine-learning">
                <h2>🤖 Machine Learning</h2>
                <p>AI, neural networks, and data science</p>
                <a href="topics/machine-learning/index.html" class="btn">Explore →</a>
            </div>

            <div class="topic-card" data-topic="design">
                <h2>🎨 Design</h2>
                <p>UI/UX, visual design, and creative principles</p>
                <a href="topics/design/index.html" class="btn">Explore →</a>
            </div>

            <div class="topic-card" data-topic="languages">
                <h2>🌍 Languages</h2>
                <p>Learning new languages and linguistics</p>
                <a href="topics/languages/index.html" class="btn">Explore →</a>
            </div>
        </section>

        <section class="recent-entries">
            <h2>Recent Learning Entries</h2>
            <div id="recent-list">
                <p>Start your learning journey by creating your first entry!</p>
            </div>
        </section>
    </main>

    <footer>
        <p>Built with 💙 | <a href="https://github.com/yourusername/learning-hub">View on GitHub</a></p>
    </footer>

    <script src="script.js"></script>
</body>
</html>
EOF

# Create styles.css
echo "🎨 Creating styles.css..."
cat > styles.css << 'EOF'
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
    line-height: 1.6;
    color: #333;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 100vh;
}

header {
    text-align: center;
    padding: 3rem 1rem;
    color: white;
}

header h1 {
    font-size: 2.5rem;
    margin-bottom: 0.5rem;
}

main {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
}

.stats {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 1.5rem;
    margin-bottom: 3rem;
}

.stat-card {
    background: white;
    padding: 2rem;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.stat-number {
    font-size: 2.5rem;
    font-weight: bold;
    color: #667eea;
}

.topics-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 2rem;
    margin-bottom: 3rem;
}

.topic-card {
    background: white;
    padding: 2rem;
    border-radius: 12px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.topic-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 12px rgba(0,0,0,0.15);
}

.topic-card h2 {
    margin-bottom: 0.5rem;
    color: #667eea;
}

.btn {
    display: inline-block;
    margin-top: 1rem;
    padding: 0.5rem 1.5rem;
    background: #667eea;
    color: white;
    text-decoration: none;
    border-radius: 6px;
    transition: background 0.3s ease;
}

.btn:hover {
    background: #5568d3;
}

.recent-entries {
    background: white;
    padding: 2rem;
    border-radius: 12px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.recent-entries h2 {
    margin-bottom: 1rem;
    color: #667eea;
}

.entry-item {
    padding: 1rem;
    border-bottom: 1px solid #eee;
    display: flex;
    gap: 1rem;
    align-items: center;
}

.entry-date {
    color: #999;
    font-size: 0.9rem;
}

.entry-topic {
    background: #667eea;
    color: white;
    padding: 0.2rem 0.5rem;
    border-radius: 4px;
    font-size: 0.8rem;
}

footer {
    text-align: center;
    padding: 2rem;
    color: white;
}

footer a {
    color: white;
    text-decoration: underline;
}

.content {
    max-width: 800px;
    margin: 0 auto;
    background: white;
    padding: 3rem;
    border-radius: 12px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.content h1, .content h2, .content h3 {
    color: #667eea;
    margin-top: 1.5rem;
    margin-bottom: 1rem;
}

.content a {
    color: #667eea;
    text-decoration: none;
    border-bottom: 2px solid #667eea;
}

.content code {
    background: #f4f4f4;
    padding: 0.2rem 0.5rem;
    border-radius: 4px;
    font-family: 'Courier New', monospace;
}

.content pre {
    background: #f4f4f4;
    padding: 1rem;
    border-radius: 8px;
    overflow-x: auto;
}
EOF

# Create script.js
echo "⚡ Creating script.js..."
cat > script.js << 'EOF'
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
EOF

# Create daily note template
echo "📋 Creating daily note template..."
cat > templates/daily-note-template.md << 'EOF'
---
title: "Topic Title"
date: YYYY-MM-DD
topic: topic-name
tags: [tag1, tag2, tag3]
---

# Topic Title

## 📝 What I Learned Today

Brief summary of what you learned.

## 🔑 Key Concepts

- **Concept 1**: Explanation
- **Concept 2**: Explanation
- **Concept 3**: Explanation

## 💡 Examples

```
Code examples or practical applications
```

## 🔗 Related Topics

- [Related Topic 1](../other-topic/related-file.md)
- [Related Topic 2](../another-topic/file.md)

## 📚 Resources

- [Resource 1](url)
- [Resource 2](url)

## 🤔 Questions to Explore

- Question 1?
- Question 2?

## ✅ Next Steps

- [ ] Practice exercise 1
- [ ] Read more about X
- [ ] Build a small project
EOF

# Create topic index files
echo "📚 Creating topic index pages..."

cat > topics/programming/index.md << 'EOF'
# 💻 Programming

A collection of my daily learning about programming, software development, and computer science.

## Recent Entries

Coming soon!

## Topics to Cover

- Python
- JavaScript
- Algorithms
- Design Patterns
- Data Structures

## Cross-Topic Connections

Programming often intersects with:
- [Mathematics](../mathematics/index.md) - Algorithms and computational complexity
- [Machine Learning](../machine-learning/index.md) - Implementation of ML models
EOF

cat > topics/mathematics/index.md << 'EOF'
# 📐 Mathematics

Mathematical concepts, proofs, and problem-solving techniques.

## Recent Entries

Coming soon!

## Topics to Cover

- Linear Algebra
- Calculus
- Statistics
- Discrete Mathematics
- Number Theory

## Cross-Topic Connections

Mathematics connects with:
- [Programming](../programming/index.md) - Algorithms and data structures
- [Machine Learning](../machine-learning/index.md) - Statistical foundations
EOF

cat > topics/machine-learning/index.md << 'EOF'
# 🤖 Machine Learning

AI, neural networks, and data science concepts.

## Recent Entries

Coming soon!

## Topics to Cover

- Neural Networks
- Deep Learning
- Natural Language Processing
- Computer Vision
- Reinforcement Learning

## Cross-Topic Connections

Machine Learning requires:
- [Programming](../programming/index.md) - Implementation skills
- [Mathematics](../mathematics/index.md) - Statistical foundations
EOF

cat > topics/design/index.md << 'EOF'
# 🎨 Design

UI/UX, visual design, and creative principles.

## Recent Entries

Coming soon!

## Topics to Cover

- Color Theory
- Typography
- UI/UX Principles
- Design Systems
- Accessibility

## Cross-Topic Connections

Design intersects with:
- [Programming](../programming/index.md) - Frontend development
EOF

cat > topics/languages/index.md << 'EOF'
# 🌍 Languages

Learning new languages and exploring linguistics.

## Recent Entries

Coming soon!

## Topics to Cover

- Spanish
- French
- Linguistics
- Grammar Patterns
- Vocabulary Building

## Cross-Topic Connections

Language learning benefits from:
- [Programming](../programming/index.md) - Language learning apps
EOF

# Create .gitignore
echo "🔒 Creating .gitignore..."
cat > .gitignore << 'EOF'
.DS_Store
*.swp
*.swo
*~
.vscode/
.idea/
EOF

# Initialize git repository
echo "🔧 Initializing git repository..."
git init
git add .
git commit -m "Initial setup of Daily Learning Hub"

echo ""
echo "✅ Setup complete!"
echo ""
echo "📂 Your learning hub is ready at: $(pwd)"
echo ""
echo "🚀 Next steps:"
echo "1. Create a GitHub repository named 'learning-hub'"
echo "2. Run: git remote add origin https://github.com/YOUR_USERNAME/learning-hub.git"
echo "3. Run: git branch -M main"
echo "4. Run: git push -u origin main"
echo "5. Enable GitHub Pages in repository Settings → Pages"
echo ""
echo "📝 To create your first entry:"
echo "   cp templates/daily-note-template.md topics/programming/$(date +%Y-%m-%d)-my-first-entry.md"
echo ""
echo "Happy learning! 🎓"
EOF