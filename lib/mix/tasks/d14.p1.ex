defmodule Mix.Tasks.D14.P1 do
  use Mix.Task

  import AdventOfCode.Day14

  @shortdoc "Day 14 Part 1"
  def run(args) do
    input =
      "9 RJLWC, 9 RJCH => 9 QWFH\n1 XZVHQ, 9 SPQR, 2 WKGVW => 5 KPZB\n12 HPRPM, 4 GTZCK => 7 DJNDX\n7 JKRV, 3 FKTLR, 19 FDSBZ => 9 HPRPM\n9 VTCRJ => 4 SPSW\n2 FDSBZ, 1 FKTLR => 6 KBJF\n9 SPSW => 9 QHVSJ\n5 TFPNF, 11 MNMBX, 1 QCMJ, 13 TXPL, 1 DJNDX, 9 XZVHQ, 2 WKGVW, 2 VQPX => 8 GPKR\n10 DWTC, 8 DSPJG => 4 QCMJ\n100 ORE => 9 XZDP\n3 DBRBD => 4 DKRX\n37 JKRV, 5 FKTLR => 7 VXZN\n3 HWDS, 2 ZRBN => 8 XZVHQ\n15 QNXZV, 53 VXZN, 3 LJQH, 13 FKXVQ, 6 DZGN, 17 MNMBX, 16 GPKR, 8 HWJVK => 1 FUEL\n8 GSLWP => 7 PWTFL\n4 HVPWG => 9 JKRV\n5 NVWGS, 1 QWFH, 9 CWZRS => 2 XPMV\n6 ZRBN => 4 JZDB\n36 BWXWC, 14 HKFD => 3 FMNK\n3 FMNK, 2 SPSW, 16 WKGVW => 6 VQPX\n1 DWTC => 9 VMHM\n3 HPRPM, 1 DWTC => 5 TXPL\n1 KBJF, 2 ZSKSW => 1 MNMBX\n5 JZDB => 4 FDSBZ\n2 FKXVQ => 9 ZTFZG\n17 XZDP => 2 HKFD\n7 VMHM => 3 FGQF\n1 JKRV => 8 CWZRS\n1 WKGVW, 2 SPSW => 6 VLQP\n3 ZRBN => 3 ZSKSW\n7 VXZN, 7 TGLHX => 5 NVWGS\n10 VLQP, 18 FGQF => 4 DBRBD\n8 VMHM => 8 SPQR\n1 KPZB, 4 GQGB, 3 WKGVW => 1 FDSZX\n2 VXZN => 8 VTCRJ\n3 RJLWC => 2 GQGB\n6 TXPL => 4 DSPJG\n2 ZTFZG => 8 TJLW\n1 MPSPS => 3 BWXWC\n5 FMNK, 4 ZSKSW => 5 RWKWD\n137 ORE => 3 MPSPS\n1 VTCRJ, 8 QWFH => 2 GKVQK\n8 RJLWC => 8 TFPNF\n7 TJLW, 1 TFPNF, 16 VQPX, 4 DBRBD, 4 GTZCK, 5 XPMV, 1 FDSZX => 6 DZGN\n1 HVPWG => 7 RJLWC\n18 HVPWG, 9 BWXWC => 4 GSLWP\n107 ORE => 8 RJCH\n1 RJCH => 2 ZRBN\n2 GSLWP, 18 RWKWD, 1 QWFH => 5 LJQH\n3 VXZN, 1 FMNK => 4 TGLHX\n3 HKFD, 6 FMNK => 3 FKTLR\n3 MPSPS => 4 HVPWG\n27 PWTFL, 15 ZTFZG, 6 QHVSJ, 14 DJNDX, 9 RWKWD, 2 MNMBX, 4 DKRX => 6 QNXZV\n1 ZSKSW, 9 KBJF => 3 FKXVQ\n2 FDSBZ => 4 DWTC\n3 HPRPM => 5 HWDS\n1 GKVQK, 1 PWTFL => 5 GTZCK\n1 FGQF => 5 WKGVW\n5 FDSBZ, 7 SPSW => 6 HWJVK"

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1() end}),
      else:
        input
        |> part1()
        |> IO.inspect(label: "Part 1 Results")
  end
end
