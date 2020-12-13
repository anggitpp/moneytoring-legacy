part of 'widgets.dart';

class SalesGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: "#E5E5E5".toColor()),
      ),
      child: Row(
        children: [
          Container(
            width: 140,
            height: 140,
            child: PieChart(PieChartData(
                centerSpaceRadius: 25,
                borderData: FlBorderData(show: false),
                sections: [
                  PieChartSectionData(
                      showTitle: false, value: 25, color: "#FAE3EB".toColor()),
                  PieChartSectionData(
                      showTitle: false, value: 25, color: "#DAECFF".toColor()),
                  PieChartSectionData(
                      showTitle: false, value: 50, color: "#FFE8CF".toColor()),
                ])),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border.all(color: "#1D2A64".toColor(), width: 2),
                      shape: BoxShape.circle,
                      color: "#FAE3EB".toColor(),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Aquarium Kaca',
                    style: mediumFont.copyWith(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border.all(color: "#1D2A64".toColor(), width: 2),
                      shape: BoxShape.circle,
                      color: "#DAECFF".toColor(),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Smart Device',
                    style: mediumFont.copyWith(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border.all(color: "#1D2A64".toColor(), width: 2),
                      shape: BoxShape.circle,
                      color: "#FFE8CF".toColor(),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Electronic',
                    style: mediumFont.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
