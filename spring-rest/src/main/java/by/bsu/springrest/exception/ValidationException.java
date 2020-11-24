package by.bsu.springrest.exception;

public class ValidationException extends Exception {
    public ValidationException() {
        super();
    }

    public ValidationException(String cause) {
        super(cause);
    }

    public ValidationException(Throwable t) {
        super(t);
    }

    public ValidationException(String cause, Throwable t) {
        super(cause, t);
    }
}
