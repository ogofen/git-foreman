class vdsm {
    require server-utils
    require repos
    include vdsm::packages
    include vdsm::tools
    include vdsm::initiator
}
