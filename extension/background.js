browser.contextMenus.create({
  id: "open_in_default_browser",
  title: "デフォルトブラウザで開く",
  contexts: ["link"]
});

browser.contextMenus.onClicked.addListener((info, tab) => {
  let url = info.linkUrl;
  console.log(url);
  console.log("aho");
  browser.runtime.sendNativeMessage("com.hirohiro716.open_in_default_browser", { url });
});

