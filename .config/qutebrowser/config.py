config.load_autoconfig()
for mode in ["normal", "caret"]:
    config.bind("gs", "spawn --userscript yomichad", mode=mode)
    config.bind("gS", "spawn --userscript yomichad --prefix-search", mode=mode)
config.set("colors.webpage.darkmode.enabled", True)
config.set("colors.webpage.bg", "grey")

config.bind("xs", "config-cycle statusbar.show always never")
config.bind("xt", "config-cycle tabs.show always never")
config.bind(
    "xx",
    "config-cycle tabs.show always never;; config-cycle statusbar.show always never",
)
config.bind("Alt+o", "cmd-set-text -s :open -b")
config.bind("Alt+O", "cmd-set-text -s :open -w")


c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}&ia=web",
    "!dd": "https://thefreedictionary.com/{}",
    "!cmk": "https://comick.io/search?q={}",
    "!ani": "https://aniwave.to/filter?keyword={}",
    "!fb": "https://www.facebook.com/s.php?q={}",
    "!gh": "https://github.com/search?o=desc&q={}&s=stars",
    "!gist": "https://gist.github.com/search?q={}",
    "!gi": "https://www.google.com/search?tbm=isch&q={}&tbs=imgo:1",
    "!ig": "https://www.instagram.com/explore/tags/{}",
    "!m": "https://www.google.com/maps/search/{}",
    # "!p": "https://pry.sh/{}",
    "!r": "https://www.reddit.com/search?q={}",
    "!t": "https://www.thesaurus.com/browse/{}",
    "!tw": "https://twitter.com/search?q={}",
    "!mal": "https://myanimelist.net/search/all?q={}&cat=all",
    "!w": "https://en.wikipedia.org/wiki/{}",
    "!yt": "https://www.youtube.com/results?search_query={}",
    "!ji": "https://jisho.org/search/{}",
}
