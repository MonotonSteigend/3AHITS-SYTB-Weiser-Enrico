touch "${1}.sh"

echo "#!/bin/bash" >> "${1}.sh"
echo "echo 'gruezi woed' "  >> "${1}.sh"
chmod +x "${1}.sh"
