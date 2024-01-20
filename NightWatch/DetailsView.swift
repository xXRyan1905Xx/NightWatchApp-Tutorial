
import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    @Environment(\.verticalSizeClass) var
        verticalSizeClass
    
    var body: some View {
        VStack {
            Image("FloorPlan").resizable().aspectRatio(contentMode: .fit)
            Text(task.name)
            
            if verticalSizeClass == .regular {
                Divider()
                Text("Future development of instructions that can be provided to the user for each task.")
            }
            Divider()
            Button("Mark Complete") {
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailsView(task: Binding<Task>.constant(Task(name: "Test task", isComplete: false, lastCompleted: nil)))
            DetailsView(task: Binding<Task>.constant(Task(name: "Test task", isComplete: false, lastCompleted: nil)))
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/667.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/375.0/*@END_MENU_TOKEN@*/))
        }
    }
}
