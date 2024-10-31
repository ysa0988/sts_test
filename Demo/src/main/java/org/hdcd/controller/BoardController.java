package org.hdcd.controller;

import org.hdcd.domain.Board;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {
	
	@PostMapping("/{boardNo}")
	public ResponseEntity<String> modify(@PathVariable("boardNo") int boardNo, @RequestBody Board board) {
		log.info("modify");
		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		return entity;
	}
	
	@PutMapping(path="/{boardNo}", consumes="application/json")
	public ResponseEntity<String> modifyByHeader(@PathVariable("boardNo") int boardNo, @RequestBody Board board) {
		log.info("modifyByHeader");
		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		return entity;
	}
	
	@PutMapping(path="/{boardNo}", consumes="application/xml")
	public ResponseEntity<String> modifyByXml (@PathVariable("boardNo") int boardNo, @RequestBody Board board) {
		log.info("modifyByXml boardNo: "+ boardNo);
		log.info("modifyByXml board: "+board);
		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		return entity;
	}

	@GetMapping(path="/get", params="register")
	public String registerForm() {
		log.info("registerForm");
		return "board/register";
	}
	
	@PostMapping(path="/post", params="register")
	public String register() {
		log.info("refister");
		return "board/list";
	}
	
	@GetMapping(path="/get", params="modify")
	public String modifyForm() {
		log.info("modifyForm");
		return "board/modify";
	}
	
	@PostMapping(path="/post", params="modify")
	public String modify() {
		log.info("modify");
		return "body/list";
	}
	
	@GetMapping(path="get", params="remove")
	public String removeForm() {
		log.info("removeForm");
		return "board/remove";
	}
	
	@PostMapping(path="/post", params="remove")
	public String remove() {
		log.info("remove");
		return "board/list";
	}
	
	@GetMapping(path="/get", params="list")
	public String list() {
		log.info("list");
		return "board/list";
	}
	
	@GetMapping(path="/get", params="read")
	public String read() {
		log.info("read");
		return "board/read";
	}

	
}
