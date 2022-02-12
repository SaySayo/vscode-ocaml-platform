### This file is generated by opam2nix.

self:
let
    lib = self.lib;
    pkgs = self.pkgs;
    selection = self.selection;
    repoPath = self.repoPath;
    repos = 
    {
      opam-repository = 
      rec {
        fetch = 
        {
          owner = "ocaml";
          repo = "opam-repository";
          rev = "ae6aff50030492f9b7eed0cf952fdca40f4cf125";
          sha256 = "0xya6x3b7d5ssz8dly1yc4lj2nyrln033g3gnjf2fx67nggjdxmr";
        };
        src = (pkgs.fetchFromGitHub) fetch;
      };
    };
in
{
  format-version = 4;
  inherit repos;
  ocaml-version = "4.13.1";
  selection = 
  {
    base = 
    {
      pname = "base";
      version = "v0.14.3";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/base/archive/v0.14.3.tar.gz";
        sha256 = "0nmydvlbw124c0qz80fx1rpggpr00ylp2zpnyn26qf1a0pfw0kg3";
      };
      opamInputs = 
      {
        inherit (selection) sexplib0 ocaml dune-configurator dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base/base.v0.14.3";
        hash = "sha256:1v61rsyfwkpla41ga6hsagzjihmn1lg5whg2gwb01w9xhdy95qd2";
      };
    };
    base-threads = 
    {
      pname = "base-threads";
      version = "base";
      src = null;
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base-threads/base-threads.base";
        hash = "sha256:1c4bpyh61ampjgk5yh3inrgcpf1z1xv0pshn54ycmpn4dyzv0p2x";
      };
    };
    base-unix = 
    {
      pname = "base-unix";
      version = "base";
      src = null;
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base-unix/base-unix.base";
        hash = "sha256:0mpsvb7684g723ylngryh15aqxg3blb7hgmq2fsqjyppr36iyzwg";
      };
    };
    biniou = 
    {
      pname = "biniou";
      version = "1.2.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/mjambon/biniou/releases/download/1.2.1/biniou-1.2.1.tbz";
        sha256 = "0da3m0g0dhl02jfynrbysjh070xk2z6rxcx34xnqx6ljn5l6qm1m";
      };
      opamInputs = 
      {
        inherit (selection) ocaml easy-format dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/biniou/biniou.1.2.1";
        hash = "sha256:1m9s9v4zr7022k6d50482qq7w41fdqp58nkpfhcp8574hg65kh69";
      };
    };
    cmdliner = 
    {
      pname = "cmdliner";
      version = "1.1.0";
      src = pkgs.fetchurl 
      {
        url = "https://erratique.ch/software/cmdliner/releases/cmdliner-1.1.0.tbz";
        sha256 = "1i5k2bdmkd97g0il9cxfd8praqbvblnq5k3irwp2c9g5fkh9vdca";
      };
      opamInputs = {
                     inherit (selection) ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/cmdliner/cmdliner.1.1.0";
        hash = "sha256:1wz42ijdnbq49q3raz2yyddvqsg0a62wdhhl2wmmz124ymavqz97";
      };
    };
    cppo = 
    {
      pname = "cppo";
      version = "1.6.8";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-community/cppo/archive/v1.6.8.tar.gz";
        sha256 = "0lxy4xkkkwgs1cj6d9lyzsqi9f6fc9r6cir5imi7yjqrpd86s1by";
      };
      opamInputs = 
      {
        inherit (selection) ocaml dune base-unix;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/cppo/cppo.1.6.8";
        hash = "sha256:0pzd8irqkkkpfgw8nq9d21z9rj5m3qlzixyb7ybfy4b1fwh3n8bp";
      };
    };
    csexp = 
    {
      pname = "csexp";
      version = "1.5.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-dune/csexp/releases/download/1.5.1/csexp-1.5.1.tbz";
        sha256 = "00mc19f89pxpmjl62862ya5kjcfrl8rjzvs00j05h2m9bw3f81fn";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/csexp/csexp.1.5.1";
        hash = "sha256:01lc95kz13gpki4xazyh6n20kv1g9inyb5myv240wl2n9v50z8fl";
      };
    };
    dune = 
    {
      pname = "dune";
      version = "2.9.3";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/dune/releases/download/2.9.3/dune-site-2.9.3.tbz";
        sha256 = "1ml8bxym8sdfz25bx947al7cvsi2zg5lcv7x9w6xb01cmdryqr9y";
      };
      opamInputs = 
      {
        inherit (selection) base-unix
        base-threads;
        ocamlfind-secondary = selection.ocamlfind-secondary or null;
        ocaml = selection.ocaml or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/dune/dune.2.9.3";
        hash = "sha256:0m4pbbfyhmjw8mb2d0cr2pkypl54g2f098bnwhd2arj21nkdi3l8";
      };
    };
    dune-configurator = 
    {
      pname = "dune-configurator";
      version = "2.9.3";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/dune/releases/download/2.9.3/dune-site-2.9.3.tbz";
        sha256 = "1ml8bxym8sdfz25bx947al7cvsi2zg5lcv7x9w6xb01cmdryqr9y";
      };
      opamInputs = 
      {
        inherit (selection) result ocaml dune csexp;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/dune-configurator/dune-configurator.2.9.3";
        hash = "sha256:08bfsmnl4qw5wr7gcfg18xk70x8x195cs7kr1mch13fq83f8m8np";
      };
    };
    easy-format = 
    {
      pname = "easy-format";
      version = "1.3.2";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/mjambon/easy-format/releases/download/1.3.2/easy-format-1.3.2.tbz";
        sha256 = "09hrikx310pac2sb6jzaa7k6fmiznnmhdsqij1gawdymhawc4h1l";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/easy-format/easy-format.1.3.2";
        hash = "sha256:0rjgw1ygf8khwb7vgl5vnw907m8b5mpkb0bnlqiqz9zfmfb4jd47";
      };
    };
    gen_js_api = 
    {
      pname = "gen_js_api";
      version = "1.0.8";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/LexiFi/gen_js_api/archive/v1.0.8.tar.gz";
        sha256 = "1xd9bgwsrjwn0qzzr82jbnrc691vffmcnwsj7faklg3zb268n841";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ojs ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/gen_js_api/gen_js_api.1.0.8";
        hash = "sha256:00q9p6cpya0jwfvj15mpbq4kv9869q9ji4366rpjswa60sbmlhg0";
      };
    };
    js_of_ocaml = 
    {
      pname = "js_of_ocaml";
      version = "4.0.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocsigen/js_of_ocaml/releases/download/4.0.0/js_of_ocaml-4.0.0.tbz";
        sha256 = "0pj9jjrmi0xxrzmygv4b5whsibw1jxy3wgibmws85x5jwlczh0nz";
      };
      opamInputs = 
      {
        inherit (selection) uchar ppxlib ocaml js_of_ocaml-compiler dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/js_of_ocaml/js_of_ocaml.4.0.0";
        hash = "sha256:0krl3wlgld1ibpy5bivygw060578kxvk81wnipnnsc92drpk5nyk";
      };
    };
    js_of_ocaml-compiler = 
    {
      pname = "js_of_ocaml-compiler";
      version = "4.0.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocsigen/js_of_ocaml/releases/download/4.0.0/js_of_ocaml-4.0.0.tbz";
        sha256 = "0pj9jjrmi0xxrzmygv4b5whsibw1jxy3wgibmws85x5jwlczh0nz";
      };
      opamInputs = 
      {
        inherit (selection) yojson ppxlib ocaml menhirSdk menhirLib menhir
        dune cmdliner;
        ocamlfind = selection.ocamlfind or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/js_of_ocaml-compiler/js_of_ocaml-compiler.4.0.0";
        hash = "sha256:168fq44ndm268374152w39x9pa351h8ddz3xgada46s9sw0qa2n6";
      };
    };
    js_of_ocaml-ppx = 
    {
      pname = "js_of_ocaml-ppx";
      version = "4.0.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocsigen/js_of_ocaml/releases/download/4.0.0/js_of_ocaml-4.0.0.tbz";
        sha256 = "0pj9jjrmi0xxrzmygv4b5whsibw1jxy3wgibmws85x5jwlczh0nz";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ocaml js_of_ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/js_of_ocaml-ppx/js_of_ocaml-ppx.4.0.0";
        hash = "sha256:0qccn6vv70ig56dw4iyqmk2jmvgdyl81cxcwrkml7fbk5mcvn513";
      };
    };
    jsonoo = 
    {
      pname = "jsonoo";
      version = "0.2.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/mnxn/jsonoo/releases/download/v0.2.1/jsonoo-v0.2.1.tbz";
        sha256 = "0vyisz67rgiicb6frvyb0lfgv2c1i9mqrxji1i9s6psqn6izglnv";
      };
      opamInputs = 
      {
        inherit (selection) ocaml js_of_ocaml-ppx js_of_ocaml gen_js_api dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/jsonoo/jsonoo.0.2.1";
        hash = "sha256:0icxpmcrgv1r36qkvp48akw34cr374d9r24d4ghxwi7z31d2hwqz";
      };
    };
    menhir = 
    {
      pname = "menhir";
      version = "20220210";
      src = pkgs.fetchurl 
      {
        url = "https://gitlab.inria.fr/fpottier/menhir/-/archive/20220210/archive.tar.gz";
        sha256 = "0dapvzw55y9ggadh7ahya22s6r972c2n2nx6jsw5437ryldfi92p";
      };
      opamInputs = 
      {
        inherit (selection) ocaml menhirSdk menhirLib dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/menhir/menhir.20220210";
        hash = "sha256:0v2w4jslcpd39ra755fg3731q2l565h78cg0rly6rw61ja7d1808";
      };
    };
    menhirLib = 
    {
      pname = "menhirLib";
      version = "20220210";
      src = pkgs.fetchurl 
      {
        url = "https://gitlab.inria.fr/fpottier/menhir/-/archive/20220210/archive.tar.gz";
        sha256 = "0dapvzw55y9ggadh7ahya22s6r972c2n2nx6jsw5437ryldfi92p";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/menhirLib/menhirLib.20220210";
        hash = "sha256:0nl416snigjxz4w4fkvgfss6g6viqnixzcjysww7rpj7fs39rpqq";
      };
    };
    menhirSdk = 
    {
      pname = "menhirSdk";
      version = "20220210";
      src = pkgs.fetchurl 
      {
        url = "https://gitlab.inria.fr/fpottier/menhir/-/archive/20220210/archive.tar.gz";
        sha256 = "0dapvzw55y9ggadh7ahya22s6r972c2n2nx6jsw5437ryldfi92p";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/menhirSdk/menhirSdk.20220210";
        hash = "sha256:182rqysmqw0z0zfwagq8wcbl42xrz1rnn09r9c283m2n7iv0n3a9";
      };
    };
    ocaml = 
    {
      pname = "ocaml";
      version = "4.13.1";
      src = null;
      opamInputs = 
      {
        inherit (selection)
        ocaml-config;
        ocaml-variants = selection.ocaml-variants or null;
        ocaml-system = selection.ocaml-system or null;
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml/ocaml.4.13.1";
        hash = "sha256:12aajj2hc636jr6wbv4vba8pmjdndbcvnw7q35gj4agxmrjspziw";
      };
    };
    ocaml-base-compiler = 
    {
      pname = "ocaml-base-compiler";
      version = "4.13.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/ocaml/archive/4.13.1.tar.gz";
        sha256 = "1i7ad8lh5l74wb3yzmhlv529wc75a5sjybzkad7wdl8zrj47jk0r";
      };
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-base-compiler/ocaml-base-compiler.4.13.1";
        hash = "sha256:069i5vsndd9lsvdm5wk898nfnc85ww7459nibjg6881ww43w8ck1";
      };
    };
    ocaml-compiler-libs = 
    {
      pname = "ocaml-compiler-libs";
      version = "v0.12.4";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/ocaml-compiler-libs/releases/download/v0.12.4/ocaml-compiler-libs-v0.12.4.tbz";
        sha256 = "0q3pl20pkx410gw9g4m26qq6dmzi9qan2dqlga6c2ifc6pnckjaf";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-compiler-libs/ocaml-compiler-libs.v0.12.4";
        hash = "sha256:1blynia10j8vyj559kcvc7ic69zq6qjjn092fcsjzfw6czd8ya2c";
      };
    };
    ocaml-config = 
    {
      pname = "ocaml-config";
      version = "2";
      src = null;
      opamInputs = 
      {
        ocaml-variants = selection.ocaml-variants or null;
        ocaml-system = selection.ocaml-system or null;
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-config/ocaml-config.2";
        hash = "sha256:0h0hgqq9mbywvqygppfdc50gf9ss8a97l4dgsv3hszmzh6gglgrg";
      };
    };
    ocaml-version = 
    {
      pname = "ocaml-version";
      version = "3.4.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocurrent/ocaml-version/releases/download/v3.4.0/ocaml-version-v3.4.0.tbz";
        sha256 = "09cavcmla9zyqj3vmmp4n59bgj1ydbk4qhsz1dqvgsyqx2svxhfq";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-version/ocaml-version.3.4.0";
        hash = "sha256:18ixm46gxssqcljvjyz3yj65jphbs3jf9v998bbfm06m3y49z038";
      };
    };
    ocamlbuild = 
    {
      pname = "ocamlbuild";
      version = "0.14.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/ocamlbuild/archive/refs/tags/0.14.1.tar.gz";
        sha256 = "0ml2y3dqhhbwlf94l3jgz6gfhhfp41qaf1sjm8p8c37q1vzpj4jf";
      };
      opamInputs = {
                     inherit (selection) ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocamlbuild/ocamlbuild.0.14.1";
        hash = "sha256:04ws6wbbsv56r4b6f29514inn77d91gb6sa8z62bxkswk1s1r1fn";
      };
    };
    ojs = 
    {
      pname = "ojs";
      version = "1.1.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/LexiFi/gen_js_api/archive/v1.1.0.tar.gz";
        sha256 = "148axiwjd1jd74vb0467vzy61z5rq3v37w9m7y2h8rl3rgfpnmkq";
      };
      opamInputs = 
      {
        inherit (selection) ocaml js_of_ocaml-compiler dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ojs/ojs.1.1.0";
        hash = "sha256:0isl3fc37986670a1y1in13mx66nyqslk16m714qcq667735hfz1";
      };
    };
    opam-file-format = 
    {
      pname = "opam-file-format";
      version = "2.1.3";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/opam-file-format/archive/2.1.3.tar.gz";
        sha256 = "1bqyrlsvmjf4gqzmzbiyja9m1ph30ic9i18x23p5ziymyylw2sfg";
      };
      opamInputs = 
      {
        inherit (selection) ocaml;
        dune = selection.dune or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/opam-file-format/opam-file-format.2.1.3";
        hash = "sha256:08d3s5iyn1lrnai13qvw96zmvms3b0xzyqbkkp9pcr254f5f7ffz";
      };
    };
    ppx_derivers = 
    {
      pname = "ppx_derivers";
      version = "1.2.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-ppx/ppx_derivers/archive/1.2.1.tar.gz";
        sha256 = "159vqy616ni18mn0dlv8c2y4h7mb4hahwjn53yrr59yyhzhmwndn";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_derivers/ppx_derivers.1.2.1";
        hash = "sha256:1hj1ina0n7pgz16mrvijczapw75pd0hif0i18dpw7d1fyg2qr8py";
      };
    };
    ppxlib = 
    {
      pname = "ppxlib";
      version = "0.24.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-ppx/ppxlib/releases/download/0.24.0/ppxlib-0.24.0.tbz";
        sha256 = "1j4hg8gc8mkw64gvjghig1179ih90yki54hf8qxmn3yd5ry04rkp";
      };
      opamInputs = 
      {
        inherit (selection) stdlib-shims sexplib0 ppx_derivers
        ocaml-compiler-libs ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppxlib/ppxlib.0.24.0";
        hash = "sha256:0yjsgdkfkbwyjj3yihrqnxlpagrbcr1gln7bxfmx96y3xa4fs8jv";
      };
    };
    promise_jsoo = 
    {
      pname = "promise_jsoo";
      version = "0.3.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/mnxn/promise_jsoo/releases/download/v0.3.1/promise_jsoo-v0.3.1.tbz";
        sha256 = "00pjnsbv0yv3hhxbbl8dsljgr95kjgi9w8j1x46gjyxg9zayrxzl";
      };
      opamInputs = 
      {
        inherit (selection) ocaml js_of_ocaml-ppx js_of_ocaml gen_js_api dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/promise_jsoo/promise_jsoo.0.3.1";
        hash = "sha256:1awsb93iipwc9q8cnam7qa9rzjivirryqnhwba01wz37gz3471sd";
      };
    };
    result = 
    {
      pname = "result";
      version = "1.5";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/result/releases/download/1.5/result-1.5.tbz";
        sha256 = "0cpfp35fdwnv3p30a06wd0py3805qxmq3jmcynjc3x2qhlimwfkw";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/result/result.1.5";
        hash = "sha256:0ybmvlisfz5swvbcq855czz1ysv9zxmb79f1m0x8284hczmfm98f";
      };
    };
    sexplib0 = 
    {
      pname = "sexplib0";
      version = "v0.14.0";
      src = pkgs.fetchurl 
      {
        url = "https://ocaml.janestreet.com/ocaml-core/v0.14/files/sexplib0-v0.14.0.tar.gz";
        sha256 = "0adrc0r1vvvr41dcpj8jwkzh1dfgqf0mks9xlnnskqfm3a51iavg";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/sexplib0/sexplib0.v0.14.0";
        hash = "sha256:0k9vkjbiibja48c0yayal7xwyik3h3c3v4dwd3j7jbmras63ig2c";
      };
    };
    stdlib-shims = 
    {
      pname = "stdlib-shims";
      version = "0.3.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/stdlib-shims/releases/download/0.3.0/stdlib-shims-0.3.0.tbz";
        sha256 = "0jnqsv6pqp5b5g7lcjwgd75zqqvcwcl5a32zi03zg1kvj79p5gxs";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/stdlib-shims/stdlib-shims.0.3.0";
        hash = "sha256:19g9dnaxyh2ajz6pdczdsqzzvsmfrxwx6f613inkr31jw5hrqkiz";
      };
    };
    uchar = 
    {
      pname = "uchar";
      version = "0.0.2";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/uchar/releases/download/v0.0.2/uchar-0.0.2.tbz";
        sha256 = "1w2saw7zanf9m9ffvz2lvcxvlm118pws2x1wym526xmydhqpyfa7";
      };
      opamInputs = {
                     inherit (selection) ocamlbuild ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/uchar/uchar.0.0.2";
        hash = "sha256:17sfpyj5a1z3knnjvnfa5vql6cj2x9pzgzk8w4jrvd2zii2bwpcl";
      };
    };
    vscode = 
    {
      pname = "vscode";
      version = "development";
      src = self.directSrc "vscode";
      opamInputs = 
      {
        inherit (selection) promise_jsoo ocaml jsonoo js_of_ocaml gen_js_api
        dune;
      };
      opamSrc = "vscode.opam";
    };
    vscode-ocaml-platform = 
    {
      pname = "vscode-ocaml-platform";
      version = "development";
      src = self.directSrc "vscode-ocaml-platform";
      opamInputs = 
      {
        inherit (selection) vscode promise_jsoo ppxlib opam-file-format
        ocaml-version ocaml jsonoo js_of_ocaml gen_js_api dune base;
      };
      opamSrc = "vscode-ocaml-platform.opam";
    };
    yojson = 
    {
      pname = "yojson";
      version = "1.7.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-community/yojson/releases/download/1.7.0/yojson-1.7.0.tbz";
        sha256 = "1iich6323npvvs8r50lkr4pxxqm9mf6w67cnid7jg1j1g5gwcvv5";
      };
      opamInputs = 
      {
        inherit (selection) ocaml easy-format dune cppo biniou;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/yojson/yojson.1.7.0";
        hash = "sha256:1n8iih0jmaf9b0hsv6ph729jajws9w43kgm24324p4wlj45rjs2q";
      };
    };
  };
}

