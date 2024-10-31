package org.hdcd;


import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import org.hdcd.domain.Board;
import org.hdcd.domain.Member;
import org.hdcd.domain.UserItem;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class LombokTests {
	@Test
	public void testRequiredArgsConstrutor() {
		Board board = new Board(20);
		System.out.print(board);
	}
}
