BEGIN { \
    FS=""; \
    cg=0; \
    t=0; \
} \
{ \
    if ($1 != ">") { \
        for (i = 1; i <= NF; i++) { \
            if ($i ~ /[ACTGactg]/) { \
                t++;
            } \
            if ($i ~ /[CGcg]/) { \
                cg++;
            } \
        } \
    } \
} \
END { \
    print cg"\t"t"\t"(cg/t); \
}' Input_file_name
