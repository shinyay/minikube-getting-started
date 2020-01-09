package io.pivotal.shinyay.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.client.RestTemplate

@RestController
@RequestMapping
class FrontendController(val restTemplate: RestTemplate) {

    val BACKEND_URL = "http://backend-app:8080"

    @GetMapping("/")
    fun showCurrentTime() = "Message from Backend App: " + restTemplate.getForEntity(BACKEND_URL, String::class.java).body
}