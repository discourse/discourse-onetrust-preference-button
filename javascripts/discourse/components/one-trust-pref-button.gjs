import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import DButton from "discourse/components/d-button";

export default class OneTrustPrefButton extends Component {
  @service sidebarState;

  get shouldRender() {
    return this.sidebarState.currentPanelKey !== "admin";
  }

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
    {{#if this.shouldRender}}
      <DButton
        @action={{this.oneTrustTrigger}}
        @label={{themePrefix "one_trust.button"}}
        class="btn-flat onetrust-pref"
      />
    {{/if}}
  </template>
}
