local dap = require('dap')
dap.configurations.javascript = {
    {
        type = "javascript";
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        nodePath = function ()
            return '/usr/local/bin/node'
        end;
    },
}
