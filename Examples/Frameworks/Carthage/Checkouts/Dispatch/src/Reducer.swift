import Foundation

open class Reducer<S: AnyState, A: AnyAction> {

  public init() { }

  /** This method should return the operation for the action passed as argument.
   *  You can chain several operations together by defining dependencies between them.
   *  Remember to call 'operation.finish' when an operation is finished.
   */
  open func operation(for action: A, in store: Store<S, A>) -> ActionOperation<S,A> {
    return ActionOperation(action: action, store: store) { operation, _, _ in
      operation.finish()
    }
  }
}
