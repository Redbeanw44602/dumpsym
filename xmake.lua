add_rules('mode.debug', 'mode.release')

add_requires('llvm')

target('dumpsym')
    set_kind('shared')
    add_files('src/**.cpp')
    add_includedirs('src')
    set_languages('c23', 'c++23')
    
    add_packages('llvm')

    if is_mode('debug') then 
        add_defines('DEBUG')
    end
