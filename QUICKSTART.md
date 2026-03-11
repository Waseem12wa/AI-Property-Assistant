# Quick Start Guide - Web Chat Interface

## Get Started in 3 Steps

### Step 1: Start n8n Workflow
Make sure your n8n workflow is running:
```powershell
# If not already running, start n8n
npx n8n

# Open browser to http://localhost:5678
# Activate your "AI Property Assistant" workflow
```

### Step 2: Open Chat Interface
```powershell
# Simply open the chat interface file
start chat-interface.html
```
**Or:** Double-click `chat-interface.html` in File Explorer

### Step 3: Start Chatting!
- **Type your query** in the input box, or
- **Click a suggestion button** for quick searches, or
- **Click the microphone icon 🎤** to use voice input

## Example Queries to Try

**Quick Suggestions (already built-in as buttons):**
- 🏢 "Apartments in NYC"
- 🏖️ "Miami Villas"
- 💰 "Studios under $2000"
- 🛏️ "3 bedroom apartments"
- 🏊 "Properties with pool"
- 🌤️ "What is the weather in Los Angeles?"
- 🏙️ "Available apartments in Chicago"
- ✨ "Luxury properties in San Francisco"

**More Examples:**
- "Show me apartments in New York under $3000"
- "I need a 2 bedroom villa in Miami"
- "What's the weather like in Boston?"
- "Find studios with gym and parking"
- "I want a property with 3 bedrooms and pool"

## Voice Input

1. Click the **🎤 microphone icon** in the input field
2. **Allow microphone access** when browser asks
3. **Speak clearly** - "Show me apartments in New York"
4. The bot will automatically capture your speech
5. Press **Enter** or click **Send**

**Best browsers for voice:** Chrome or Microsoft Edge

## Troubleshooting

### "Error: Make sure n8n workflow is running"
- Check that n8n is running at http://localhost:5678
- Verify the workflow is activated (toggle switch is ON)
- Refresh the chat interface page

### Voice input not working
- Use Chrome or Edge browser (best support)
- Allow microphone permissions when prompted
- Check your microphone is connected and working

### No bot response
- Check n8n workflow logs for errors
- Verify environment variables are set correctly
- Make sure Supabase database has properties

## Features

✅ **Professional UI** - Modern gradient design  
✅ **Voice Input** - Speak your queries naturally  
✅ **Quick Suggestions** - 8 pre-built example buttons  
✅ **Real-time Chat** - Instant responses with typing indicators  
✅ **Message History** - See your entire conversation  
✅ **Smart Context** - Bot remembers your preferences  
✅ **Auto-scroll** - Always shows latest messages  

## Next Steps

- Run the comprehensive test suite: `.\comprehensive-test.ps1`
- Check the full README.md for advanced features
- Record a video demo for your hiring submission

---

**Need Help?** See the full [README.md](README.md) for complete setup instructions.
