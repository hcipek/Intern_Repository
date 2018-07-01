FUNCTION excuse_in_use (excuse_in IN excuse_excuse_t)
RETURN BOOLEAN

IS

    c_progname CONSTANT progname_t:='EXCUSE_IN_USE';
    l_return BOOLEAN;
    
BEGIN

    -- check caller obligations
    assert_pre(condition_in     => excuse_in is not null    
              ,progname_in      => c_progname
              ,msg_in           => 'excuse_in not null');
     /*@Hakan : assert_pre fonksiyonunun içinde , fonksiyon için kullan?l?cak condition_in , progname_in gibi
     parametleri ve hangi ön ko?ullarda kullan?l?cag? aç?klanmakta.*/         
    -- compute return value
    l_return := g_excuses_used.EXISTS(excuse_in);
    
    -- check return obligations
    assert_post(condition_in    => l_return is not null
               ,progname_in     => c_progname
               ,msg_in          => 'l_return is not null');
    /*@Hakan : assert_post , assert_pre ön ko?ulunda al?nan parametlerinin nas?l cal???cag?n? anlat?yor.*/
    RETURN l_return;
END excuse_in_use;    
