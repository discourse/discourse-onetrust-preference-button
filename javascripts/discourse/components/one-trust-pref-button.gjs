import Component from "@glimmer/component";
import { action } from "@ember/object";
import DButton from "discourse/components/d-button";

export default class OneTrustPrefButton extends Component {
  @action
  oneTrustTrigger() {
    if (window.OneTrust) {
      window.OneTrust.ToggleInfoDisplay();
    } else {
      // eslint-disable-next-line no-console
      console.warn("OneTrust is not defined");
    }
  }

  <template>
    <DButton
      @action={{this.oneTrustTrigger}}
      @label={{themePrefix "one_trust.button"}}
      class="btn-flat onetrust-pref"
    />
  </template>
}
