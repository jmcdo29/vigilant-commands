#! /bin/sh
uuid()
{
    local N B C='89ab'
    local id

    for (( N=0; N < 16; ++N ))
    do
        B=$(( $RANDOM%256 ))

        case $N in
            6)
                id=$id$(printf '4%x' $(( B%16 )))
                ;;
            8)
                id=$id$(printf '%c%x' ${C:$RANDOM%${#C}:1} $(( B%16 )))
                ;;
            3 | 5 | 7 | 9)
                id=$id$(printf '%02x-' $B)
                ;;
            *)
                id=$id$(printf '%02x' $B)
                ;;
        esac
    done
    echo $id
    printf $id | clip
}
uuid