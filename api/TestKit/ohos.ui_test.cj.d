/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.ui_test

import ohos.callback_invoke.Callback
import ohos.labels.APILevel

/**
 * The unified facade of UiTest framework,can be used to find Component,trigger keyEvents,perform
 * coordinates-based UI actions,capture screen and so on.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class Driver {
    /**
     * Create an Driver object.
     *
     * @returns { Driver } the Driver object.
     * @throws { BusinessException } 17000001 - Initialization failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public static func create(): Driver

    /**
     * Delay with specified duration.
     *
     * @param { Int32 } duration - the delay duration in milliseconds, not less than 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func delayMs(duration: Int32): Unit

    /**
     * Find the first matched Component on current UI.
     *
     * @param { On } on - the attribute requirements of the target Component.
     * @returns { ?Component } the first matched Component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func findComponent(on: On): ?Component

    /**
     * Find the first matched UiWindow window.
     *
     * @param { WindowFilter } filter - the filer condition of the target window.
     * @returns { ?UiWindow } the first matched UiWindow window.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func findWindow(filter: WindowFilter): ?UiWindow

    /**
     * Find the first matched Component on current UI during the time given.
     *
     * @param { On } on - the attribute requirements of the target Component.
     * @param { Int32 } time - duration of finding in milliseconds, not less than 0.
     * @returns { ?Component } the first matched Component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func waitForComponent(on: On, time: Int32): ?Component

    /**
     * Find all the matched Components on current UI.
     *
     * @param { On } on - the attribute requirements of the target Component.
     * @returns { ?Array<Component> } the matched Components list.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func findComponents(on: On): ?Array<Component>

    /**
     * Assert that the matched Components exists on current UI;if not,assertError will be raised.
     *
     * @param { On } on - the attribute requirements of the target Component.
     * @throws { BusinessException } 17000003 - Assertion failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func assertComponentExist(on: On): Unit

    /**
     * Press the BACK key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        workerthread: true
    ]
    public func pressBack(): Unit

    /**
     * Press the specified key.
     *
     * @param { Int32 } keyCode - the target keyCode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func triggerKey(keyCode: Int32): Unit

    /**
     * Press two or three key combinations
     *
     * @param { Int32 } key0 - the first keyCode.
     * @param { Int32 } key1 - the second keyCode.
     * @param { Int32 } [key2] - the third keyCode,set it default 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func triggerCombineKeys(key0: Int32, key1: Int32, key2!: Int32 = 0): Unit

    /**
     * Click on the specified location on the screen.
     *
     * @param { Int32 } x - the x-coordinate, not less than 0.
     * @param { Int32 } y - the y-coordinate, not less than 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func click(x: Int32, y: Int32): Unit

    /**
     * DoubleClick on the specified location on the screen.
     *
     * @param { Int32 } x - the x-coordinate, not less than 0.
     * @param { Int32 } y - the y-coordinate, not less than 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func doubleClick(x: Int32, y: Int32): Unit

    /**
     * LongClick on the specified location on the screen.
     *
     * @param { Int32 } x - the x-coordinate, not less than 0.
     * @param { Int32 } y - the y-coordinate, not less than 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func longClick(x: Int32, y: Int32): Unit

    /**
     * Swipe on the screen between the specified points.
     *
     * @param { Int32 } startx - the x-coordinate of the starting point, not less than 0.
     * @param { Int32 } starty - the y-coordinate of the starting point, not less than 0.
     * @param { Int32 } endx - the x-coordinate of the ending point, not less than 0.
     * @param { Int32 } endy - the y-coordinate of the ending point, not less than 0.
     * @param { Int32 } [speed] - the speed of swipe(pixels per second),ranges from 200 to 40000. Set it default 600 if out of range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func swipe(
        startx: Int32,
        starty: Int32,
        endx: Int32,
        endy: Int32,
        speed!: Int32 = 600
    ): Unit

    /**
     * Drag on the screen between the specified points.
     *
     * @param { Int32 } startx - the x-coordinate of the starting point, not less than 0.
     * @param { Int32 } starty - the y-coordinate of the starting point, not less than 0.
     * @param { Int32 } endx - the x-coordinate of the ending point, not less than 0.
     * @param { Int32 } endy - the y-coordinate of the ending point, not less than 0.
     * @param { Int32 } [speed] - the speed of drag(pixels per second),ranges from 200 to 40000. Set it default 600 if out of range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func drag(
        startx: Int32,
        starty: Int32,
        endx: Int32,
        endy: Int32,
        speed!: Int32 = 600
    ): Unit

    /**
     * Capture current screen and save as picture which PNG format.
     *
     * @param { String } savePath - the path where to store the picture, must be in the application sandbox directory.
     * @returns { Bool } true if screen-capturing and file-storing are completed successfully,false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func screenCap(savePath: String): Bool

    /**
     * Set the rotation of the device display.
     *
     * @param { DisplayRotation } rotation - the target rotation to set.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func setDisplayRotation(rotation: DisplayRotation): Unit

    /**
     * Get the rotation of the device display.
     *
     * @returns { DisplayRotation } the current display rotation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        workerthread: true
    ]
    public func getDisplayRotation(): DisplayRotation

    /**
     * Enable/disable the rotation of device display.
     *
     * @param { Bool } enabled - enable the rotation or not.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func setDisplayRotationEnabled(enabled: Bool): Unit

    /**
     * Get the size of the device display.
     *
     * @returns { Point } the size of the device display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        workerthread: true
    ]
    public func getDisplaySize(): Point

    /**
     * Get the density of the device display.
     *
     * @returns { Point } the density of the device display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        workerthread: true
    ]
    public func getDisplayDensity(): Point

    /**
     * Wake up the device display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        workerthread: true
    ]
    public func wakeUpDisplay(): Unit

    /**
     * Press the home key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        workerthread: true
    ]
    public func pressHome(): Unit

    /**
     * Wait for the UI become idle.
     *
     * @param { Int32 } idleTime - the threshold of UI idle time, in millisecond, not less than 0.
     * @param { Int32 } timeout - the maximum time to wait for idle, in millisecond, not less than 0.
     * @returns { Bool } true if wait for idle succeed in the timeout, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func waitForIdle(idleTime: Int32, timeout: Int32): Bool

    /**
     * Inject fling on the device display.
     *
     * @param { Point } from - the coordinate point where the finger touches the screen.
     * @param { Point } to - the coordinate point where the finger leaves the screen.
     * @param { Int32 } stepLen - the length of each step, in pixels.
     * @param { Int32 } speed - the speed of fling(pixels per second),ranges from 200 to 40000. Set it default 600 if out of range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func fling(from: Point, to: Point, stepLen: Int32, speed: Int32): Unit

    /**
     * Inject multi-pointer action on the device display.
     *
     * @param { PointerMatrix } pointers - the two-dimensional array of pointers to inject.
     * @param { Int32 } [speed] - the speed of swipe(pixels per second),ranges from 200 to 40000. Set it default 600 if
     * out of range.
     * @returns { Bool } true if the operation finished, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func injectMultiPointerAction(pointers: PointerMatrix, speed!: Int32 = 600): Bool

    /**
     * Inject fling on the device display.
     *
     * @param { UiDirection } direction - the direction of this action.
     * @param { Int32 } speed - the speed of fling (pixels per second),default is 600,the value ranges from 200 to 40000,set it 600 if out of range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func fling(direction: UiDirection, speed: Int32): Unit

    /**
     * Click on the specified location on the screen with the specified mouse button, and press the specified key
     * simultaneously if necessary.
     *
     * @param { Point } p - the coordinate of the specified location.
     * @param { MouseButton } btnId - the button of Mouse.
     * @param { Int32 } [key1] - the first keyCode,set it default 0.
     * @param { Int32 } [key2] - the second keyCode,set it default 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func mouseClick(p: Point, btnId: MouseButton, key1!: Int32 = 0, key2!: Int32 = 0): Unit

    /**
     * Move the mouse cursor to the specified location.
     *
     * @param { Point } p - the coordinate of the specified location.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func mouseMoveTo(p: Point): Unit

    /**
     * The mouse wheel scrolls the specified cell at the specified position, and press the specified key simultaneously
     * if necessary.
     *
     * @param { Point } p - the coordinate of the specified location.
     * @param { Bool } down - whether the mouse wheel rolls down.
     * @param { Int32 } d - the number of cells that the mouse wheel scrolls, each cell will make the target point
     * shift 120 pixels.
     * @param { Int32 } [key1] - the first keyCode,set it default 0.
     * @param { Int32 } [key2] - the second keyCode,set it default 0.
     * @param { Int32 } [speed] - The Speed of mouse wheel rolls(cells per second),ranges from 1 to 500.Set it default 20 if out of range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func mouseScroll(p: Point, down: Bool, d: Int32, key1!: Int32 = 0, key2!: Int32 = 0, speed!: Int32 = 20): Unit

    /**
     * Capture the specified area of current screen and save as picture which PNG format.
     *
     * @param { String } savePath - the path where to store the picture, must be in the application sandbox directory.
     * @param { Rect } [rect] - the specified area of current screen, default to full screen.Set it default.
     * @returns { Bool } true if screen-capturing and file-storing are completed successfully, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func screenCapture(savePath: String, rect!: Rect = Rect(0, 0, 0, 0)): Bool

    /**
     * Create an UiEventObserver object.
     *
     * @returns { UiEventObserver } the UiEventObserver object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func createUiEventObserver(): UiEventObserver

    /**
     * Double click on the specified location on the screen with the specified mouse button, and press the specified
     * key simultaneously if necessary.
     *
     * @param { Point } p - the coordinate of the specified location.
     * @param { MouseButton } btnId - the button of Mouse.
     * @param { Int32 } [key1] - the first keyCode,set it default 0.
     * @param { Int32 } [key2] - the second keyCode,set it default 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func mouseDoubleClick(p: Point, btnId: MouseButton, key1!: Int32 = 0, key2!: Int32 = 0): Unit

    /**
     * Long click on the specified location on the screen with the specified mouse button, and press the specified key
     * simultaneously if necessary.
     *
     * @param { Point } p - the coordinate of the specified location.
     * @param { MouseButton } btnId - the button of Mouse.
     * @param { Int32 } [key1] - the first keyCode,set it default 0.
     * @param { Int32 } [key2] - the second keyCode,set it default 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func mouseLongClick(p: Point, btnId: MouseButton, key1!: Int32 = 0, key2!: Int32 = 0): Unit

    /**
     * Swipe on the screen between the specified points with mouse.
     *
     * @param { Point } from - the starting point.
     * @param { Point } to - the ending point.
     * @param { Int32 } [speed] - speed of swipe (pixels per second),the value ranges from 200 to 40000.Set it default 600 if out of range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func mouseMoveWithTrack(from: Point, to: Point, speed!: Int32 = 600): Unit

    /**
     * Hold down the left mouse button and drag on the screen between the specified points.
     *
     * @param { Point } from - the starting point.
     * @param { Point } to - the ending point.
     * @param { Int32 } [speed] - speed of drag (pixels per second),the value ranges from 200 to 40000,Set it default 600 if out of range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func mouseDrag(from: Point, to: Point, speed!: Int32 = 600): Unit

    /**
     * Inject text on the specified location.
     *
     * @param { Point } p - the coordinate of the specified location.
     * @param { String } text - the text to inject.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func inputText(p: Point, text: String): Unit
}

/**
 * Represents a two-dimensional array of pointers on the device display, it's used to build a
 * multi-finger trace which can be injected with UiDriver.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class PointerMatrix {
    /**
     * Create an PointerMatrix object.
     *
     * @param { Int32 } fingers - The number of fingers, ranges from 1 to 10.
     * @param { Int32 } steps - The number of steps of each finger trace, ranges from 1 to 1000.
     * @returns { PointerMatrix } the PointerMatrix object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public static func create(fingers: Int32, steps: Int32): PointerMatrix

    /**
     * Set the point value of an element in the PointerMatrix.
     *
     * @param { Int32 } finger - the index of target finger to set.
     * @param { Int32 } step - the index of target step to set.
     * @param { Point } point - the coordinate of target step to set.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func setPoint(finger: Int32, step: Int32, point: Point): Unit
}

/**
 * Represents a window of the ohos application,user can perform operations or query attributes on it.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class UiWindow {
    /**
     * Get the bundle name of this UiWindow.
     *
     * @returns { String } the bundle name.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getBundleName(): String

    /**
     * Get the bounds rect of this UiWindow.
     *
     * @returns { Rect } the bounds rect object.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getBounds(): Rect

    /**
     * Get the title of this UiWindow.
     *
     * @returns { String } the title value.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getTitle(): String

    /**
     * Get the window mode of this UiWindow.
     *
     * @returns { WindowMode } the WindowMode object
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getWindowMode(): WindowMode

    /**
     * Get the focused status of this UiWindow.
     *
     * @returns { Bool } the focused status
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isFocused(): Bool

    /**
     * Set the focused status of this UiWindow.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func focus(): Unit

    /**
     * Move this UiWindow to the specified points.
     *
     * @param { Int32 } x - the x coordinate of destination, not less than 0.
     * @param { Int32 } y - the y coordinate of destination, not less than 0.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     * @throws { BusinessException } 17000005 - This operation is not supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func moveTo(x: Int32, y: Int32): Unit

    /**
     * Resize this UiWindow to the specified size for the specified direction.
     *
     * @param { Int32 } wide - the expected wide of the window after resizing.
     * @param { Int32 } height - the expected height of the window after resizing.
     * @param { ResizeDirection } direction - the expected direction of the window after resizing.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     * @throws { BusinessException } 17000005 - This operation is not supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func resize(wide: Int32, height: Int32, direction: ResizeDirection): Unit

    /**
     * Change this UiWindow into split screen mode.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     * @throws { BusinessException } 17000005 - This operation is not supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func split(): Unit

    /**
     * Maximize this UiWindow.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     * @throws { BusinessException } 17000005 - This operation is not supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func maximize(): Unit

    /**
     * Minimize this UiWindow.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     * @throws { BusinessException } 17000005 - This operation is not supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func minimize(): Unit

    /**
     * Resume this UiWindow.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     * @throws { BusinessException } 17000005 - This operation is not supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func resume(): Unit

    /**
     * Close this UiWindow.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     * @throws { BusinessException } 17000005 - This operation is not supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func close(): Unit

    /**
     * Get the active status of this UiWindow.
     *
     * @returns { Bool } the active status.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isActive(): Bool
}

/**
 * Describes the attribute requirements for the target Components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class On {
    /**
     * On constructor
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public init()

    /**
     * Specifies the text for the target Component.
     *
     * @param { String } txt - the text value.
     * @param { MatchPattern } [pattern] - the match pattern of the text value.Set it default MatchPattern.
     * @returns { On } On object that matches the text attribute of the target component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func text(txt: String, pattern!: MatchPattern = MatchPattern.Equals): On

    /**
     * Specifies the id of the target Component.
     *
     * @param { String } id - the id value.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func id(id: String): On

    /**
     * Specifies the type of the target Component.
     *
     * @param { String } tp - the type value.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func onType(tp: String): On

    /**
     * Specifies the clickable attribute of the target component.
     *
     * @param { Bool } [b] - the clickable status.Set it default true.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func clickable(b!: Bool = true): On

    /**
     * Specifies the longClickable status of the target Component.
     *
     * @param { Bool } [b] - the longClickable status.Set it default true.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func longClickable(b!: Bool = true): On

    /**
     * Specifies the scrollable status of the target Component.
     *
     * @param { Bool } [b] - the scrollable status.Set it default true.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func scrollable(b!: Bool = true): On

    /**
     * Specifies the enabled status of the target Component.
     *
     * @param { Bool } [b] - the enabled status.Set it default true.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func enabled(b!: Bool = true): On

    /**
     * Specifies the focused status of the target Component.
     *
     * @param { Bool } [b] - the focused status. The default value is true.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func focused(b!: Bool = true): On

    /**
     * Specifies the selected status of the target Component.
     *
     * @param { Bool } [b] - the selected status. The default value is true.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func selected(b!: Bool = true): On

    /**
     * Specifies the checked status of the target Component.
     *
     * @param { Bool } [b] - the checked status. The default value is true.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func checked(b!: Bool = true): On

    /**
     * Specifies the checkable status of the target Component.
     *
     * @param { Bool } [b] - the checkable status. The default value is true.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func checkable(b!: Bool = true): On

    /**
     * Requires that the target Component which is before another Component that specified by the given On
     * object,used to locate Component relatively.
     *
     * @param { On } on - describes the attribute requirements of Component which the target one is in front of.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func isBefore(on: On): On

    /**
     * Requires that the target Component which is after another Component that specified by the given On
     * object,used to locate Component relatively.
     *
     * @param { On } on - describes the attribute requirements of Component which the target one is in back of.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func isAfter(on: On): On

    /**
     * Requires that the target Component which is inside of another Component that specified by the given On
     * object,used to locate Component relatively.
     *
     * @param { On } on - describes the attribute requirements of Component which the target one is inside of.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func within(on: On): On

    /**
     * Specifies the bundleName of the application which the window that the target Component is located belongs.
     *
     * @param { String } bundleName - the bundleName of the specified window.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func inWindow(bundleName: String): On

    /**
     * Specifies the description for the target Component.
     *
     * @param { String } val - the description value.
     * @param { MatchPattern } [pattern] - the MatchPattern of description value, set it default MatchPattern.
     * @returns { On } this On object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func description(val: String, pattern!: MatchPattern = MatchPattern.Equals): On
}

/**
 * The type of func once.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public enum OnceType {
    /**
     * The type of toast show.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    ToastShow
    |
    /**
     * The type of dialog show.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    DialogShow
    | ...
}


extend OnceType <: ToString {

    /**
     * Converts the OnceType to its string representation.
     * @returns A string representation of the OnceType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func toString(): String
}


extend OnceType <: Equatable<OnceType> {

    /**
     * Compares this OnceType with another for equality.
     * @param other The OnceType to compare with.
     * @returns True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public operator func ==(other: OnceType): Bool

    /**
     * Compares this OnceType with another for inequality.
     * @param other The OnceType to compare with.
     * @returns True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public operator func !=(other: OnceType): Bool
}

/**
 * Observer to monitor UI events.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class UiEventObserver {
    /**
     * Listen for toast show once
     *
     * @param { OnceType } onceType - the type of func once.
     * @param { Callback<UiElementInfo> } callback - function, returns the monitored UiElementInfo.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true
    ]
    public func once(onceType: OnceType, callback: Callback<UiElementInfo>): Unit
}

/**
 * Represents a Component of the ohos application,user can perform operations or query attributes on it.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class Component {
    /**
     * Click this Component.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func click(): Unit

    /**
     * Double click this Component.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func doubleClick(): Unit

    /**
     * Long click this Component.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func longClick(): Unit

    /**
     * Get the id attribute value.
     *
     * @returns { String } the id value.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getId(): String

    /**
     * Get the text attribute value.
     *
     * @returns { String } the text value.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getText(): String

    /**
     * Get the type name.
     *
     * @returns { String } the type name.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getType(): String

    /**
     * Get the clickable status of this Component.
     *
     * @returns { Bool } the clickable status.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isClickable(): Bool

    /**
     * Get the longClickable status of this Component.
     *
     * @returns { Bool } the longClickable status.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isLongClickable(): Bool

    /**
     * Get the scrollable status of this Component.
     *
     * @returns { Bool } the scrollable status.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isScrollable(): Bool

    /**
     * Get the enabled status of this Component.
     *
     * @returns { Bool } the enabled status.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isEnabled(): Bool

    /**
     * Get the focused status of this Component.
     *
     * @returns { Bool } the focused status.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isFocused(): Bool

    /**
     * Get the selected status of this Component.
     *
     * @returns { Bool } the selected status.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isSelected(): Bool

    /**
     * Get the checked status of this Component.
     *
     * @returns { Bool } the checked status.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isChecked(): Bool

    /**
     * Get the checkable status of this Component.
     *
     * @returns { Bool } the checkable status.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func isCheckable(): Bool

    /**
     * Inject text to this Component,applicable to TextInput.
     *
     * @param { String } text - the text to inject.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func inputText(text: String): Unit

    /**
     * Clear text of this Component,applicable to TextInput.
     *
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func clearText(): Unit

    /**
     * Scroll on this Component to the top,applicable to scrollable one.
     *
     * @param { Int64 } [speed] - the speed of swipe(pixels per second),ranges from 200 to 40000. Set it default 600 if out of range.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func scrollToTop(speed!: Int64 = 600): Unit

    /**
     * Scroll on this Component to the bottom,applicable to scrollable one.
     *
     * @param { Int64 } [speed] - the speed of swipe(pixels per second),ranges from 200 to 40000. Set it default 600 if out of range.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func scrollToBottom(speed!: Int64 = 600): Unit

    /**
     * Get the bounds rect of this Component.
     *
     * @returns { Rect } the bounds rect object.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getBounds(): Rect

    /**
     * Scroll on this Component to find matched Component,applicable to scrollable one.
     *
     * @param { On } on - the attribute requirements of the target Component.
     * @returns { ?Component } the found result,or undefined if not found.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func scrollSearch(on: On): ?Component

    /**
     * Get the boundsCenter of this Component.
     *
     * @returns { Point } the boundsCenter object.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getBoundsCenter(): Point

    /**
     * Drag this Component to the bounds rect of target Component.
     *
     * @param { Component } target - the target Component.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func dragTo(target: Component): Unit

    /**
     * Pinch enlarge this Component to the target scale.
     *
     * @param { Float32 } scale - the scale of the pinch enlarge this Component's size, ranges greater than 1.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func pinchOut(scale: Float32): Unit

    /**
     * Pinch shrink this Component to the target scale.
     *
     * @param { Float32 } scale - the scale of the pinch shrink this Component's size, ranges from 0 to 1.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func pinchIn(scale: Float32): Unit

    /**
     * Get the description attribute value.
     *
     * @returns { String } the description value.
     * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest",
        throwexception: true,
        workerthread: true
    ]
    public func getDescription(): String
}

/**
 * Enumerates the string value match pattern.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public enum MatchPattern {
    /**
     * Equals to a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Equals
    | 
    /**
     * Contains a substring.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Contains
    | 
    /**
     * StartsWith a substring.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    StartsWith
    | 
    /**
     * EndsWith a substring.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    EndsWith
    | ...
}

/**
 * Enumerates the rotation of the device display.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public enum DisplayRotation {
    /**
     * Device display does not rotate to display vertically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Rotation0
    | 
    /**
     * Device display rotates 90 degrees clockwise to display horizontally.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Rotation90
    | 
    /**
     * Device display rotates clockwise 180 degrees to display vertically in reverse.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Rotation180
    | 
    /**
     * Device display rotates 270 degrees clockwise to display horizontally in reverse.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Rotation270
    | ...
}

/**
 * Enumerates the window mode of the tested window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public enum WindowMode {
    /**
     * The test window is a full screen window.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Fullscreen
    | 
    /**
     * The test window is the first window in the split screen state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Primary
    | 
    /**
     * The test window is the second window in the split screen state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Secondary
    | 
    /**
     * The test window is a floating window.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Floating
    | ...
}

/**
 * Enumerates the resize direction for the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public enum ResizeDirection {
    /**
     * Left.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Left
    | 
    /**
     * Right.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Right
    | 
    /**
     * Up.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Up
    | 
    /**
     * Down.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Down
    | 
    /**
     * Upper left.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    LeftUp
    | 
    /**
     * Lower left.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    LeftDown
    | 
    /**
     * Upper right.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    RightUp
    | 
    /**
     * Lower right.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    RightDown
    | ...
}

/**
 * Enumerates the direction for the Ui operation .
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public enum UiDirection {
    /**
     * Left.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Left
    | 
    /**
     * Right.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Right
    | 
    /**
     * Up.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Up
    | 
    /**
     * Down.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    Down
    | ...
}

/**
 * Enumerates the id of the button on the mouse.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public enum MouseButton {
    /**
     * Left button of the mouse.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    MouseButtonLeft
    |
    /**
     * Right button of the mouse.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    MouseButtonRight
    |
    /**
     * Middle button of the mouse.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    MouseButtonMiddle
    | ...
}

/**
 * Represents the point on the device screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class Point {
    /**
     * The x-coordinate of the coordinate point.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var x: Int32

    /**
     * The y-coordinate of the coordinate point.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var y: Int32

    /**
     * The displayId to which the coordinate point belongs, default is the displayId of the main scrren.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var displayId: ?Int32

    /**
     * Point constructor.
     *
     * @param { Int32 } x - The x-coordinate of the coordinate point.
     * @param { Int32 } y - The y-coordinate of the coordinate point.
     * @param { ?Int32 } [displayId] - The displayId to which the coordinate point belongs, default is the displayId of the main scrren.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public init(x: Int32, y: Int32, displayId!: ?Int32 = None)
}

/**
 * Represents the information of an Ui element, can be a component or window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class UiElementInfo {
    /**
    * The bundle name of the host application.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public let bundleName: String

    /**
    * The component type, set it as 'window' if it's a window.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public let componentType: String

    /**
    * The text of component, set it as window's title if it's a window.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public let text: String
}

/**
 * Represents filer condition to get the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class WindowFilter {
    /**
     * The package name of the application which the window belongs to.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var bundleName: ?String

    /**
     * The title of the window.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var title: ?String

    /**
     * The focal state of the window.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var focused: ?Bool

    /**
     * The active state of the window.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var active: ?Bool

    /**
     * Find the window in the specified ID display. By default, it searches all displays.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var displayId: ?Int32

    /**
     * WindowFilter constructor.
     *
     * @param { ?String } [bundleName] - The package name of the application which the window belongs to.
     * @param { ?String } [title] - The title of the window.
     * @param { ?Bool } [focused] - The focal state of the window.
     * @param { ?Bool } [active] - The active state of the window.
     * @param { ?Int32 } [displayId] - The display ID. By default, it searches all displays.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public init(bundleName!: ?String = None, title!: ?String = None, focused!: ?Bool = None, active!: ?Bool = None, displayId!: ?Int32 = None)
}

/**
 * Represents the rectangle area on the device screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Test.UiTest"
]
public class Rect {
    /**
     * The x-coordinate of the top left corner of the rectangle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var left: Int32

    /**
     * The y-coordinate of the top left corner of the rectangle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var top: Int32

    /**
     * The x-coordinate at the bottom right corner of the rectangle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var right: Int32

    /**
     * The y-coordinate at the bottom right corner of the rectangle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var bottom: Int32

    /**
     * The displayId to which the rect belongs, default is the displayId of the main screen.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var displayId: ?Int32

    /**
     * Rect constructor.
     *
     * @param { Int32 } left - The x-coordinate of the top left corner of the rectangle.
     * @param { Int32 } top - The y-coordinate of the top left corner of the rectangle.
     * @param { Int32 } right - The x-coordinate at the bottom right corner of the rectangle.
     * @param { Int32 } bottom - The y-coordinate at the bottom right corner of the rectangle.
     * @param { ?Int32 } [displayId] - The displayId to which the rect belongs, default is the displayId of the main screen.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Test.UiTest"
    ]
    public init(left: Int32, top: Int32, right: Int32, bottom: Int32, displayId!: ?Int32 = None)
}
