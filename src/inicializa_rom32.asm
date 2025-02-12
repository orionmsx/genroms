    di
    im 1                            ;ponemos interrupciones en modo 1
    ld sp,0xF380                    ;posicionamos la pila
    call search_slotset             ;ubicamos la página 1 del cartucho en la página 2 de memoria
    ei