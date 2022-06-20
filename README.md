#### **결과물**

---

<img src="https://user-images.githubusercontent.com/52690419/174540749-830982cf-7608-4de3-b0fa-16fa824e52ee.gif"  width="300" height="500"/>
                                                                                                                                   
---

**참고 문서**

[https://codewithandrea.com/articles/multiple-navigators-bottom-navigation-bar/](https://codewithandrea.com/articles/multiple-navigators-bottom-navigation-bar/)

---

#### **이런 분들에게 유용할 수 있어요 👍**

---

**1\. 각각의 탭마다 독립적인 네비게이션 스택이 필요하다**

일반적인 앱들은 앱 사용 중에 여러 탭을 왔다 갔다 할 때, 이전에 보던 탭의 히스토리를 보존해주고 있습니다.

대표적으로 멜론 앱의 경우, 검색 탭에서 노래를 검색하던 중 다른 곳으로 갔다 와도 검색 결과를 그대로 보여줍니다.

**2\. Android 에만 존재하는 "뒤로 가기 버튼" 이 이상하게 동작한다**

ios의 경우 백 버튼이 없어서 사용자는 appBar에 있는 뒤로 가기 화살표를 눌러 우리가 의도한 대로 움직이지만,

Android는 백 버튼이 생각보다 이상하게 동작해 당황할 수 있습니다.  
특히 네비게이션 바의 경우 일반적인 구조가 아니기 때문에 조심해야 합니다!

**3\. 현재 보고 있는 탭을 계속 누르면 Navigator push 중첩이 일어난다**

이 경우, 현재 탭의 스택에 있는 요소들을 모두 pop 해줘야 합니다. 

## 상세 설명

https://suhwanc.tistory.com/200
