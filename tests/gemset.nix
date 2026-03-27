{
  base64 = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yx9yn47a8lkfcjmigk79fykxvr80r4m1i35q82sxzynpbm7lcr7";
      type = "gem";
    };
    version = "0.3.0";
  };
  bigdecimal = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "19y406nx17arzsbc515mjmr6k5p59afprspa1k423yd9cp8d61wb";
      type = "gem";
    };
    version = "4.0.1";
  };
  ethon = {
    dependencies = ["ffi" "logger"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1cpwds6mpija1bwh8p89fqa993llssvi81w5ic3cnj04yg4sz65m";
      type = "gem";
    };
    version = "0.18.0";
  };
  faraday = {
    dependencies = ["faraday-net_http" "json" "logger"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "077n5ss3z3ds4vj54w201kd12smai853dp9c9n7ii7g3q7nwwg54";
      type = "gem";
    };
    version = "2.14.1";
  };
  faraday-net_http = {
    dependencies = ["net-http"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0v4hfmc7d4lrqqj2wl366rm9551gd08zkv2ppwwnjlnkc217aizi";
      type = "gem";
    };
    version = "3.4.2";
  };
  ffi = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kqasqvy8d7r09ri4n6bkdwbk63j7afd9ilsw34nzlgh0qp69ldw";
      type = "gem";
    };
    version = "1.17.4";
  };
  json = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1z9grvjyfz16ag55hg522d3q4dh07hf391sf9s96npc0vfi85xkz";
      type = "gem";
    };
    version = "2.6.1";
  };
  jwt = {
    dependencies = ["base64"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x64l31nkqjwfv51s2vsm0yqq4cwzrlnji12wvaq761myx3fxq9i";
      type = "gem";
    };
    version = "2.10.2";
  };
  logger = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00q2zznygpbls8asz5knjvvj2brr3ghmqxgr83xnrdj4rk3xwvhr";
      type = "gem";
    };
    version = "1.7.0";
  };
  multi_json = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1drisvysgvnjlz49a0qcbs294id6mvj3i8iik5rvym68ybwfzvvs";
      type = "gem";
    };
    version = "1.19.1";
  };
  multi_xml = {
    dependencies = ["bigdecimal"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nnzdswa9l6w8k5ndgbv5al9f0jkg14dqwzyic4fjd5c1cls1nxd";
      type = "gem";
    };
    version = "0.8.1";
  };
  net-http = {
    dependencies = ["uri"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15k96fj6qwbaiv6g52l538ass95ds1qwgynqdridz29yqrkhpfi5";
      type = "gem";
    };
    version = "0.9.1";
  };
  oauth2 = {
    dependencies = ["faraday" "jwt" "multi_json" "multi_xml" "rack"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "16sk9h6a6vzqxf8v1fisa8jq5cj9sw4mwc7azy5gj2w1whkfa5dp";
      type = "gem";
    };
    version = "1.4.9";
  };
  pnap_audit_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/AuditApi;
      type = "path";
    };
    version = "2.0.5";
  };
  pnap_billing_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/BillingApi;
      type = "path";
    };
    version = "3.0.0";
  };
  pnap_bmc_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/BmcApi;
      type = "path";
    };
    version = "2.3.0";
  };
  pnap_invoicing_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/InvoicingApi;
      type = "path";
    };
    version = "1.0.5";
  };
  pnap_ip_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/IpApi;
      type = "path";
    };
    version = "2.3.0";
  };
  pnap_location_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/LocationApi;
      type = "path";
    };
    version = "3.0.0";
  };
  pnap_network_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/NetworkApi;
      type = "path";
    };
    version = "2.2.0";
  };
  pnap_network_storage_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/NetworkStorageApi;
      type = "path";
    };
    version = "2.0.5";
  };
  pnap_payments_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/PaymentsApi;
      type = "path";
    };
    version = "1.0.5";
  };
  pnap_rancher_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/RancherApi;
      type = "path";
    };
    version = "2.0.5";
  };
  pnap_tag_api = {
    dependencies = ["typhoeus"];
    groups = ["default"];
    platforms = [];
    source = {
      path = /home/jenk/workspace/sdks/ruby-sdk-bmc/TagApi;
      type = "path";
    };
    version = "2.0.5";
  };
  power_assert = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00s1sfjak8w3f12g66ldb61xjavr5p2wvkflziiyhx6c2rkqgscc";
      type = "gem";
    };
    version = "3.0.1";
  };
  rack = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hj5yq200wlq1clpdvh44pqwllbxll0k3gjajxnrcn95hxzhpky5";
      type = "gem";
    };
    version = "2.2.22";
  };
  test-unit = {
    dependencies = ["power_assert"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0h0gpi3fggfa76sbm5kh48ma79z41yh6y7n3lxmaqrbf3zqyjlcw";
      type = "gem";
    };
    version = "3.5.3";
  };
  test-unit-runner-junitxml = {
    dependencies = ["test-unit"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "047jih0v03db1pb4z7c46ky4x4w8hxli8z3fqr760s2mdagrpw1p";
      type = "gem";
    };
    version = "1.0.0";
  };
  typhoeus = {
    dependencies = ["ethon"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "079k9j2alxxqn8r3vfm1anwp16v9s5f27p01k3i4g59p7v143k5s";
      type = "gem";
    };
    version = "1.6.0";
  };
  uri = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ijpbj7mdrq7rhpq2kb51yykhrs2s54wfs6sm9z3icgz4y6sb7rp";
      type = "gem";
    };
    version = "1.1.1";
  };
}
