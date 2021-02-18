var updatePermission = {
    hod:false,
    principal:false,
    coordinator:false,
    faculty:false,
    admin:true
}

var insertPermission = {
    hod:false,
    principal:false,
    coordinator:false,
    faculty:false,
    admin:true
}

module.exports = {
    insertPermission:insertPermission,
    updatePermission:updatePermission
}