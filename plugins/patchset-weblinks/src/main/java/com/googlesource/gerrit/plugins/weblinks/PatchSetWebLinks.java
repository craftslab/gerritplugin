// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
package com.googlesource.gerrit.plugins.weblinks;

import com.google.gerrit.extensions.annotations.Listen;
import com.google.gerrit.extensions.common.WebLinkInfo;
import com.google.gerrit.extensions.webui.PatchSetWebLink;
import com.google.gerrit.extensions.webui.WebLink.Target;
import com.google.inject.Inject;

@Listen
public class PatchSetWebLinks implements PatchSetWebLink {

  private static final String PATCHSET_WEBLINKS_SECTION = "patchset-weblinks";
  private static final String IMAGE_URL_KEY = "imageUrl";
  private static final String WEB_NAME_KEY = "webName";
  private static final String WEB_URL_KEY = "webUrl";
  private static final String DEFAULT_IMAGE_URL = "http://placehold.it/16x16.gif";
  private static final String DEFAULT_WEB_NAME = "PatchSetWebLinks";
  private static final String DEFAULT_WEB_URL = "http://example.com/project=%s/commit=%s";

  @Inject
  private com.google.gerrit.server.config.PluginConfigFactory pluginConfig;

  @Override
  public WebLinkInfo getPatchSetWebLink(String project, String commit) {
    String imageUrl = pluginConfig.getFromGerritConfig(PATCHSET_WEBLINKS_SECTION).getString(IMAGE_URL_KEY, DEFAULT_IMAGE_URL);
    String webName = pluginConfig.getFromGerritConfig(PATCHSET_WEBLINKS_SECTION).getString(WEB_NAME_KEY, DEFAULT_WEB_NAME);
    String webUrl = pluginConfig.getFromGerritConfig(PATCHSET_WEBLINKS_SECTION).getString(WEB_URL_KEY, String.format(DEFAULT_WEB_URL, project, commit));

    return new WebLinkInfo(webName, imageUrl, webUrl, Target.BLANK);
  }
}
