// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "./stimulus_base"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)