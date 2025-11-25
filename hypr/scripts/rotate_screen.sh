
monitor=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).name')
current=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).transform')
scale=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).scale')
refreshrate=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).refreshRate')
height=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).height')
width=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).width')
offsetX=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).x')
offsetY=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).y')

echo hello world
next=$(( (current + 1) % 4 ))
echo ${next}

setup="${monitor},${width}x${height}@${refreshrate},${offsetX}x${offsetY},${scale},transform,${next}"
echo ${setup}
hyprctl keyword monitor "${setup}"
