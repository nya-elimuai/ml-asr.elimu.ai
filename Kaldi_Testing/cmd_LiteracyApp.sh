# JHU cluster options
export train_cmd="run.pl -l arch=*64*"
x=foo
steps/make_mfcc.sh --nj 4 --cmd "$train_cmd" data/$x exp/make_mfcc/$x mfcc
steps/compute_cmvn_stats.sh data/$x exp/make_mfcc/$x mfcc
steps/decode_fmllr.sh --nj 4 --cmd "$train_cmd" exp/system1/tri3b/graph  data/$x exp/system1/tri3b/decode_$x 
