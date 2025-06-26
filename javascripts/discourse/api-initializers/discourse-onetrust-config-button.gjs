import { apiInitializer } from "discourse/lib/api";
import OneTrustPrefButton from "../components/one-trust-pref-button";

export default apiInitializer((api) => {
  if (settings.location === "navigation footer") {
    api.renderInOutlet("sidebar-footer-actions", OneTrustPrefButton);
  }

  if (settings.location === "faq/terms/privacy page") {
    api.renderInOutlet("above-static", OneTrustPrefButton);
  }
});
