package by.bsu.springrest.util;

import java.security.SecureRandom;
import java.util.Objects;
import java.util.stream.Stream;
import static java.util.Objects.isNull;

public class StringUtil {
    public static boolean isNullOrEmpty(String string) {
        return isNull(string) || string.strip().isEmpty();
    }

    public static boolean isParamsNotNull(String ... params) {
        return Stream.of(params).allMatch(Objects::nonNull);
    }

    public static boolean isParamsNotEmpty(String ... params) {
        return !Stream.of(params).allMatch(String::isEmpty);
    }
}
