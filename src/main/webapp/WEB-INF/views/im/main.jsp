<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8" />
	<title>云信 Web Demo</title>
	<link rel="stylesheet" href="css/base.css" />
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<link rel="stylesheet" href="css/contextMenu/jquery.contextMenu.css" />
	<link rel="stylesheet" href="css/minAlert.css" />
	<link rel="stylesheet" href="css/main.css" />
	<link rel="stylesheet" href="css/uiKit.css" />
	<link rel="stylesheet" href="css/CEmojiEngine.css" />
	<link rel="stylesheet" href="css/rangeslider.css" />
	<link rel="stylesheet" href="css/pure-min.css">
	<link rel="stylesheet" href="css/whiteboard.css" />
	<link rel="icon" href="images/icon.ico" type="image/x-icon" />
	<style>
		.test_div{
			position: relative;
			border:1px solid yellow;width:300px; height: 200px;
			z-index: 100;
			left: 300px;
			float: inline-end;
		}
		#sendBtn2{
			margin-top: 80px;
		}
		.div_cont_title{
			color: red;
			font-size: 16px;
			text-align: center;
		}
		.div_cont_content{
			color: #ffa009;
			font-size: 16px;
			text-align: center;
		}
	</style>
</head>

<body>
	<div class="bad-network hide tc radius5px" id="errorNetwork">已与服务器断开，请检查网络连接</div>
	<div class="wrapper box-sizing">
		<div class="content">
			<div class="left-panel radius5px" id="left-panel">
				<div class="hide loading" id="loading"></div>
				<div class="title">
					<img src="" alt="" width="56" height="56" class="radius-circle avatar" id="userPic" />
					<span id="userName">&nbsp;</span>
					<span>
						<img src="images/pen.png" class="u-modify" id="showMyInfo">
					</span>
					<span class="exit" title="退出" id="logout">退出</span>
				</div>
				<div class="m-devices hide">正在使用云信web版</div>
				<div class="panel" id="switchPanel">
					<a class="box-sizing tc m-unread panel_tab cur" data-type="sessions">
						<span class="icon icon-session"></span>
						<b class="u-unread hide"> </b>
					</a>
					<!--<a class="box-sizing tc panel_tab" data-type="friends">
						<span class="icon icon-friend"></span>
					</a>-->
					<!--<a class="box-sizing tc panel_tab" data-type="teams">
						<span class="icon icon-team"></span>
					</a>-->
				</div>
				<div class="item" id="sessionsWrap" data-type="sessions">
					<!-- 最近联系人 -->
					<div class="list">
						<div class="m-panel">
							<div class="panel_item m-sysMsg" id="showNotice">
								<div class="panel_avatar">
									<img class="panel_image" src="images/notice.png" alt="消息中心" />
								</div>
								<div class="panel_text">
									<p class="panel_single-row">消息中心</p>
								</div>
								<b class="count j-sysMsgCount hide"></b>
							</div>
						</div>
						<div id="sessions">
							<p>正在获取最近联系人...</p>
						</div>
					</div>
				</div>
			<!--<div class="item hide" id="friendsWrap" data-type="friends">
                &lt;!&ndash; 通讯录 &ndash;&gt;
                <div class="list">
                    <div class="m-panel">
                        <div class="panel_item" id="addFriend">
                            <div class="panel_avatar">
                                <img class="panel_image" src="images/addFriend.png" alt="添加好友" />
                            </div>
                            <div class="panel_text">
                                <p class="panel_single-row">添加好友</p>
                            </div>
                        </div>
                        <div class="panel_item" id="showBlacklist">
                            <div class="panel_avatar">
                                <img class="panel_image" src="images/black.png" alt="黑名单" />
                            </div>
                            <div class="panel_text">
                                <p class="panel_single-row">黑名单</p>
                            </div>
                        </div>
                        <div class="panel_item" id="myPhone">
                            <div class="panel_avatar">
                                <img class="panel_image" src="images/myPhone.png" alt="我的手机" />
                            </div>
                            <div class="panel_text">
                                <p class="panel_single-row">我的手机</p>
                            </div>
                        </div>
                    </div>
                    <div id="friends">
                        <p>正在获取通讯录...</p>
                    </div>
                </div>
            </div>-->
				<!--<div class="item hide" id="teamsWrap" data-type="teams">
					&lt;!&ndash; 群 &ndash;&gt;
					<div class="list">
						<div class="m-panel">
							<div class="panel_item" id="createTeam">
								<div class="panel_avatar">
									<img class="panel_image" src="images/addTeam.png" alt="创建讨论组" />
								</div>
								<div class="panel_text">
									<p class="panel_single-row">创建讨论组</p>
								</div>
							</div>
						</div>
						<div class="m-panel">
							<div class="panel_item" id="createAdvanceTeam">
								<div class="panel_avatar">
									<img class="panel_image" src="images/addTeam.png" alt="创建高级群" />
								</div>
								<div class="panel_text">
									<p class="panel_single-row">创建高级群</p>
								</div>
							</div>
						</div>
						<div class="m-panel">
							<div class="panel_item" id="searchAdvanceTeam">
								<div class="panel_avatar">
									<img class="panel_image" src="images/searchTeam.png" alt="搜索高级群" />
								</div>
								<div class="panel_text">
									<p class="panel_single-row">搜索高级群</p>
								</div>
							</div>
						</div>
						<div class="teams m-panel" id="teams">
						</div>
					</div>
				</div>-->
			</div>
				<div class="chatVernier" id="chatVernier">
				<span class="radius-circle hide"></span>
			</div>
			<div id="test_div" class="test_div">
				<input id="testtitle" value="">
				<textarea id="messageText2" class="chat-btn msg-input box-sizing radius5px p2p" rows="1" autofocus="autofocus" maxlength="500"></textarea>
				<a class="btn-send radius5px" id="sendBtn2">发送</a>
			</div>
			<div class="right-panel hide radius5px" id="rightPanel">
				<!-- 聊天面板 -->
				<div class="chat-box show-netcall-box" id="chatBox">
					<div class="title" id="chatTitle">
						<img src="" width="56" height="56" class="radius-circle img" id="headImg" />
						<span id="nickName"></span>
						<div class="cloudMsg tc radius4px" data-record-id="" id="cloudMsg">
							<i class="icon icon-team-info"></i>
							<p>云记录</p>
						</div>
						<div class="team-info hide tc radius4px" data-team-id="" id="teamInfo">
							<i class="icon icon-team-info"></i>
							<p>资料</p>
						</div>
					</div>
					<!--<div class="netcall-box" id="netcallBox">
						<div class="netcall-mask hide">
							<div class="netcallTip"></div>
						</div>
						<div class="top hide">
							<span class="transferAudioAndVideo switchToAudio" id="switchToAudio">切换音频</span>
							<span class="transferAudioAndVideo switchToVideo" id="switchToVideo">切换视频</span>
							<span class="fullScreenIcon toggleFullScreenButton" id="toggleFullScreenButton" title="切换全屏">&nbsp;</span>
						</div>
						&lt;!&ndash; p2p呼叫界面 &ndash;&gt;
						<div class="netcall-calling-box hide">
							<img alt="用户头像" class="avatar">
							<div class="nick"></div>
							<div class="tip">等待对方接听...</div>
							<div class="op">
								<button id="callingHangupButton" class="netcall-button red">挂断</button>
							</div>
						</div>
						&lt;!&ndash; p2p视频界面 &ndash;&gt;
						&lt;!&ndash;<div class="netcall-show-video hide">
							<div class="netcall-video-left">
								<div class="netcall-video-remote bigView">
									<div class="message"></div>
									<span class="switchViewPositionButton"></span>
								</div>
							</div>
							<div class="netcall-video-right">
								<div class="netcall-video-local smallView">
									<div class="message"></div>
									<span class="switchViewPositionButton"></span>
								</div>
								<div class="operation">
									<div class="control">
										<div class="microphone control-item">
											<div class="slider hide">
												<div class="txt">10</div>
												<input class="microSliderInput" id="microSliderInput1" type="range" min="0" max="10" step="1" value="10" data-orientation="vertical">
											</div>
											<span class="icon-micro"></span>
										</div>
										<div class="volume control-item">
											<div class="slider hide">
												<div class="txt">10</div>
												<input class="volumeSliderInput" id="volumeSliderInput1" type="range" min="0" max="10" step="1" value="10" data-orientation="vertical">
											</div>
											<span class="icon-volume"></span>
										</div>
										<div class="camera control-item">
											<span class="icon-camera"></span>
										</div>
									</div>
									<div class="op">
										<button class="hangupButton netcall-button red">挂断</button>
									</div>
									<div class="tip">00 : 00</div>
								</div>
							</div>
						</div>&ndash;&gt;
						&lt;!&ndash; p2p音频界面 &ndash;&gt;
						&lt;!&ndash;<div class="netcall-show-audio hide">
							<img alt="用户头像" class="avatar">
							<div class="nick">test</div>
							<div class="tip">00 : 00</div>
							<div class="control">
								<div class="microphone control-item ">
									<div class="slider hide">
										<div class="txt">10</div>
										<input class="microSliderInput" id="microSliderInput" type="range" min="0" max="10" step="1" value="10" data-orientation="vertical">
									</div>
									<span class="icon-micro"></span>
								</div>
								<div class="volume control-item">
									<div class="slider hide">
										<div class="txt">10</div>
										<input class="volumeSliderInput" id="volumeSliderInput" type="range" min="0" max="10" step="1" value="10" data-orientation="vertical">
									</div>
									<span class="icon-volume"></span>
								</div>
							</div>
							<div class="op">
								<button class="hangupButton netcall-button red">挂断</button>
							</div>

						</div>&ndash;&gt;
						&lt;!&ndash; 多人音视频互动界面 &ndash;&gt;
						&lt;!&ndash;<div class="netcall-meeting-box hide" id="netcallMeetingBox"></div>&ndash;&gt;
						&lt;!&ndash; 被叫界面 &ndash;&gt;
						&lt;!&ndash;<div class="netcall-becalling-box hide">
							<img alt="用户头像" class="avatar">
							<div class="nick"></div>
							<p id="becallingText" class="tip"></p>
							<div class="op">
								<div class="normal">
									<div class="checking-tip">检查插件中...
										<span class="netcall-icon-checking"></span>
									</div>
									<button class="netcall-button blue beCallingAcceptButton" id="beCallingAcceptButton">
										<span class="txt">接听</span>
										<span class="netcall-icon-checking"></span>
									</button>
									<button class="netcall-button red beCallingRejectButton" id="beCallingRejectButton">
										拒绝
									</button>
								</div>
								<div class="exception">
									<button class="netcall-button blue" id="downloadAgentButton">下载音视频插件</button>
									<br/>
									<button class="netcall-button red beCallingRejectButton">拒绝</button>
									<div class="exception-tip">拒绝调用插件申请会导致无法唤起插件,需重启浏览器</div>
								</div>
							</div>
						</div>&ndash;&gt;
						<div class="dialogs hide">
						</div>
					</div>-->
					<div id="whiteboard"></div>
					<div class="chat-content box-sizing" id="chatContent">
						<!--聊天记录 -->
					</div>
					<div class="u-chat-notice">您已退出</div>
					<div class="chat-mask"></div>
					<div class="chat-editor box-sizing" id="chatEditor" data-disabled="1">
						<div id="emojiTag" class="m-emojiTag"></div>
						<a class="chat-btn u-emoji" id="showEmoji"></a>
						<span class="chat-btn msg-type" id="chooseFileBtn">
							<a class="icon icon-file" data-type="file"></a>
						</span>
						<!--<a class="chat-btn u-netcall-audio-link" id="showNetcallAudioLink">&nbsp;</a>-->
						<!--<a class="chat-btn u-netcall-video-link" id="showNetcallVideoLink">&nbsp;</a>-->
						<!--在netcall_ui.js的fn.whenOpenChatBox中隐藏 -->
						<!--<a class="chat-btn u-whiteboard" id="showWhiteboard">&nbsp;</a>-->
						<textarea id="messageText" class="chat-btn msg-input box-sizing radius5px p2p" rows="1" autofocus="autofocus" maxlength="500"></textarea>
						<span class="chat-context" id="showTeamMsgReceipt">
							<label for="needTeamMsgReceipt">
							<input id="needTeamMsgReceipt" type="checkbox" name="needTeamMsgReceipt" />回执</label>
						</span>
						<a class="btn-send radius5px" id="sendBtn">发送</a>
						<form action="#" id="uploadForm">
							<input multiple="multiple" type="file" name="file" id="uploadFile" class="hide" />
						</form>
					</div>
				</div>
			</div>
			<div class="right-panel hide radius5px devices-container" id="devices">
				&lt;!&ndash; 设备管理面板 &ndash;&gt;
				<div class="info-box">
					<div class="title tc">
						<button class="btn back-btn radius5px" id="backBtn2">返回</button>多端登录管理
					</div>
					<div class="content">
						<div class="main">
							<div class="pic"></div>
							<div class="mobile hide">
								<p>云信手机版</p>
								<a class="u-kick j-kickMoblie">下线</a>
							</div>
							<div class="pc hide">
								<p>云信PC版</p>
								<a class="u-kick j-kickPc">下线</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="asideBox">
			<div class="m-goWhiteboard hide">
				<span class="whiteboard-icon-state netcall-icon-state-audio"></span>
				<div class="nick"></div>
				<div class="tip"></div>
			</div>
			<div class="m-goNetcall hide">
				<span class="netcall-icon-state netcall-icon-state-audio"></span>
				<div class="nick">&nbsp;</div>
				<div class="tip">00 : 00</div>
			</div>
			<!--<a href="./chatroom/list.html" target="_blank">
				<div class="u-goChartRoom"></div>
			</a>-->
		</div>
		<!-- 群资料 -->
		<div class="team-info-container hide" id="teamInfoContainer"></div>
		<!-- 云记录 -->
		<div class="cloud-msg-container hide" id="cloudMsgContainer"></div>
		<!-- 群弹框 -->
		<div class="dialog-team-container radius5px hide" id="dialogTeamContainer"></div>
		<!-- 技术方案弹框 -->
		<div class="dialog-team-container radius5px hide" id="dialogCallMethod"></div>
		<!-- 黑名单 -->
		<div class="m-blacklist radius5px hide" id="blacklist">
			<div class="title box-sizing">
				黑名单
				<i class="icon icon-close j-close"></i>
			</div>
			<div class="notice">你不会接收到列表中联系人的任何消息</div>
			<ul class="f-cb list">
				<li class="items f-cb">
					<img src="images/default-icon.png" class="head">
					<span class="nick">未知</span>
					<button class="btn radius4px btn-ok j-rm">解除</button>
				</li>
			</ul>
		</div>
		<!-- 消息中心 -->
		<div class="m-notice radius5px hide" id="notice">
			<div class="title box-sizing">
				消息中心
				<i class="icon icon-close j-close"></i>
				<b class="j-rmAllSysNotice rmAll"></b>
			</div>
			<ul class="tab f-cb">
				<li class="crt" data-value="sys">系统通知</li>
				<li data-value="other">自定义通知</li>
			</ul>
			<div class="content j-sysMsg">
			</div>
			<div class="content j-customSysMsg hide">
			</div>
		</div>
		<!-- 搜索高级群 -->
		<div class="m-dialog hide" id="searchTeamBox">
			<div class="title box-sizing">
				搜索高级群
				<i class="icon icon-close j-close"></i>
			</div>
			<div class="content tc">
				<input type="text" class="ipt radius5px box-sizing j-account" placeholder="请输入群id" />
				<div class="info f-cb">
					<img src="images/advanced.png">
					<div class="desc">
						<p class="j-name"></p>
						<p>
							<span class="j-teamId"></span>
						</p>
					</div>
				</div>
			</div>
			<div class="btns tc">
				<button class="btn btn-cancel radius4px cancel j-close">取消</button>
				<button class="btn btn-ok radius4px search j-search">确定</button>
				<button class="btn btn-cancel radius4px back j-back">继续搜索</button>
				<button class="btn btn-ok radius4px add j-add">申请加入</button>
				<button class="btn btn-ok radius4px chat j-chat">聊天</button>
			</div>
		</div>
	</div>
	<div class="footer tc">
		<span>&copy;1997 - 2018 网易公司版权所有</span>
	</div>

	<!-- 退出确认框 -->
	<div class="dialog radius5px hide" id="logoutDialog">
		<span class="icon icon-close j-close"></span>
		<div class="content tc">确定要退出云信网页版吗？</div>
		<div class="buttons tc">
			<button class="btn radius4px btn-cancel j-close">取消</button>
			<button class="btn radius4px btn-ok j-ok">确定</button>
		</div>
	</div>
	<!-- 添加好友 -->
	<div class="m-dialog hide" id="addFriendBox">
		<div class="title box-sizing">
			添加好友
			<i class="icon icon-close j-close"></i>
		</div>
		<div class="content tc">
			<input type="text" class="ipt radius5px box-sizing j-account" placeholder="请输入帐号" />
			<div class="info f-cb">
				<img src="">
				<div class="desc">
					<p class="j-nickname"></p>
					<p>
						<span class="j-username"></span>
					</p>
				</div>
			</div>
			<div class="tip">
			</div>
		</div>
		<div class="btns tc">
			<button class="btn btn-cancel radius4px cancel j-close">取消</button>
			<button class="btn btn-ok radius4px search j-search">确定</button>
			<button class="btn btn-cancel radius4px back j-back">继续搜索</button>
			<button class="btn btn-ok radius4px add j-add">加为好友</button>
			<button class="btn btn-ok radius4px done j-close">完成</button>
			<button class="btn btn-ok radius4px chat j-chat">聊天</button>
			<button class="btn btn-del radius4px blacklist j-blacklist">移出黑名单</button>
		</div>
	</div>
	<!-- 人物信息 -->
	<div class="m-card hide" id="personCard">
		<i class="icon icon-close j-close"></i>
		<div class="uInfo f-cb">
			<img class="u-icon" src="">
			<div class="desc">
				<p class="j-nick nick">超级大饼</p>
				<img src="" class="j-gender gender">
				<p>
					<span class="j-username">帐号：caojidabin</span>
				</p>
				<p>
					<span class="j-nickname">昵称：caojidabin</span>
				</p>
			</div>
		</div>
		<div class="infos">
			<div class="items alias">
				<div class="item">备注名</div>
				<input type="text" class="e-alias ipt" maxlength="16">
				<a class="j-saveAlias save">保存</a>
			</div>
			<div class="items">
				<div class="item">生日</div>
				<div class="j-birth">1990-08-18</div>
			</div>
			<div class="items">
				<div class="item">手机</div>
				<div class="j-tel">18072912974</div>
			</div>
			<div class="items">
				<div class="item">邮箱</div>
				<div class="j-email">w8@173.com </div>
			</div>
			<div class="items">
				<div class="item">签名</div>
				<div class="j-sign sign">相信真善美,相信真善美相信真善美相信真善美,相信真善美,相信真善美,相信真善美,相信真善美,相信真善美</div>
			</div>
		</div>
		<ul>
			<li class="mutelist">消息提醒
				<div class="u-switch">
					<img src="images/btn_switch.png">
					<span class="off">off</span>
					<span class="on">on</span>
				</div>
			</li>
			<li class="blacklist">黑名单
				<div class="u-switch">
					<img src="images/btn_switch.png">
					<span class="off">off</span>
					<span class="on">on</span>
				</div>
			</li>
			<li class="mute hide" id="setTeamMute">设置禁言
				<div class="u-switch">
					<img src="images/btn_switch.png">
					<span class="off">off</span>
					<span class="on">on</span>
				</div>
			</li>
		</ul>
		<div class="btns tc">
			<button class="btn btn-del radius4px j-del del">删除好友</button>
			<button class="btn btn-cancel radius4px j-add add">加为好友</button>
			<button class="btn btn-ok radius4px j-chat chat">聊天</button>
		</div>
	</div>
	<!-- 个人信息 -->
	<div class="m-card m-card-1 hide" id="myInfo">
		<i class="icon icon-close j-close"></i>
		<div class="uInfo f-cb">
			<img class="u-icon modifyAvatar j-modifyAvatar" src="" alt="更换头像">
			<div class="desc">
				<p class="j-nickname nick">超级大饼</p>
				<img src="" class="j-gender gender">
				<p>
					<span class="j-username">帐号：caojidabin</span>
				</p>
			</div>
		</div>
		<div class="infos">
			<div class="operate">
				<span class="edit j-edit">编辑</span>
				<span class="save j-save">保存</span>
				<span class="cancel j-cancel"> 取消</span>
			</div>
			<div class="tt">基本信息</div>
			<div class="showUI">
				<div class="items">
					<div class="item">生日</div>
					<div class="j-birth">1990-08-18</div>
				</div>
				<div class="items">
					<div class="item">手机</div>
					<div class="j-tel">18072912974</div>
				</div>
				<div class="items">
					<div class="item">邮箱</div>
					<div class="j-email">w8@173.com </div>
				</div>
				<div class="items">
					<div class="item">签名</div>
					<div class="j-sign sign">相信真善美,相信真善美相信真善美相信真善美,相信真善美,相信真善美,相信真善美,相信真善美,相信真善美</div>
				</div>
			</div>
			<div class="editUI">
				<div class="items">
					<div class="item">昵称</div>
					<input type="text" class="e-nick ipt" maxlength="10">
				</div>
				<div class="items">
					<div class="item">性别</div>
					<select class="e-gender slt">
						<option value="unknown">不显示</option>
						<option value="male">男</option>
						<option value="female">女</option>
					</select>
				</div>
				<div class="items">
					<div class="item">生日</div>
					<input type="text" class="e-birth ipt" maxlength="20" id="datepicker">
				</div>
				<div class="items">
					<div class="item">手机</div>
					<input type="text" class="e-tel ipt ipt-1" maxlength="13">
				</div>
				<div class="items">
					<div class="item">邮箱</div>
					<input type="text" class="e-email ipt ipt-1" maxlength="30">
				</div>
				<div class="items">
					<div class="item">签名</div>
					<textarea class="e-sign" maxlength="30"></textarea>
				</div>
			</div>
		</div>
	</div>
	<!-- 修改头像 -->
	<div class="m-modifyAvatar hide" id="modifyAvatar">
		<i class="icon icon-close j-close"></i>
		<div class="choseFileCtn">
			<form action="#" class="j-uploadForm">
				<input type="file" class="j-upload" style="display: none;">
			</form>
			<div class="choseFile j-choseFile"> 选择图片</div>
		</div>
		<div class="tt">头像更换</div>
		<div class="chose" id="cropImg">
			<img src="" class="hide">
		</div>
		<div class="big">
			<div class="img">
				<img src="" class="hide">
			</div>
			<p>160*160</p>
		</div>
		<div class="small">
			<div class="img">
				<img src="" class="hide">
			</div>
			<p>40*40</p>
		</div>
		<div class="btns f-cb">
			<button class="f-fr btn btn-ok radius4px j-save">保存</button>
			<button class="f-fr btn btn-cancel radius4p j-reupload">重新选择</button>
			<button class="f-fr btn btn-cancel radius4p j-close">取消</button>
		</div>
	</div>
	<div id="mask" class="mask hide"></div>
	<script>
		// IE 11 polify
		if (!Object.assign) {
			Object.assign = function () {
				var list = arguments
				for (var i = 1; i < list.length; i++) {
					list[0] = extend(list[0], list[i])
				}
				return list[0]
			}

			function extend(obj1, obj2) {
				for (var i in obj2) {
					obj1[i] = obj2[i]
				}
				return obj1
			}
		}
	</script>
	<script src="../3rd/nim_server_conf.js"></script>
	<script src="../3rd/NIM_Web_SDK_v5.2.0.js"></script>
	<script src="../3rd/NIM_Web_Netcall_v5.2.0.js"></script>
	<script src="../3rd/NIM_Web_WebRTC_v5.2.0.js"></script>
	<script src="../3rd/NIM_Web_WhiteBoard_v5.2.0.js"></script>
	<script src="../3rd/DrawPlugin.js"></script>

	<script src="./js/3rd/whiteboard.js"></script>
	<script src="../3rd/jquery-1.11.3.min.js"></script>
	<!--<script src="../3rd/zepto.min.js"></script>-->
	<script>
		// FastClick.attach(document.body);
		window.onerror = function (errorMessage, source, lineno, colno, error) {
			var info = "错误信息：" + errorMessage + "\n" +
				"出错文件：" + source + "\n " +
				"出错行号：" + lineno + "\n" +
				"出错列号：" + colno + "\n" +
				"错误详情：" + error + "\n";

			// alert(JSON.stringify(ERROR));
			// ajax.postp(monitorUrl, ERROR, null, function(e){
			//     alert(e.stack);
			// });
			console.error(JSON.stringify(info));
			// ajax.post('/data/updateLog', ERROR);
			// alert(JSON.stringify(info))
			// minAlert.alert({
			// 	msg: JSON.stringify(info),
			// 	confirmBtnMsg: '好哒'
			// })
		}
	</script>

	<!-- <script src="../3rd/platform.js"></script> -->
	<script src="../3rd/rtcSupport.js"></script>
	<script src="js/3rd/jquery-ui.min.js"></script>
	<script src="../3rd/rangeslider.min.js"></script>
	<!-- 右键菜单-->
	<script src="js/3rd/contextMenu/jquery.ui.position.js"></script>
	<script src="js/3rd/contextMenu/jquery.contextMenu.js"></script>
	
	<script src="js/config.js"></script>
	<script src="js/md5.js"></script>
	
	<script src="js/emoji.js"></script>
	<script src="js/util.js?v=2"></script>
	<script src="js/cache.js?v=2"></script>
	<script src="js/link.js"></script>
	<script src="js/ui.js?v=2"></script>
	
	
	<script src="js/widget/uiKit.js?v=2"></script>
	<script src="js/widget/minAlert.js"></script>
	<script src="js/module/base.js"></script>
	<script src="js/module/message.js"></script>
	<script src="js/module/sysMsg.js"></script>
	<script src="js/module/personCard.js"></script>
	<script src="js/module/session.js"></script>
	<script src="js/module/friend.js"></script>


	<script src="js/module/team.js"></script>
	<script src="js/module/dialog_team.js"></script>
	<script src="js/module/cloudMsg.js"></script>
	<script src="js/module/notification.js"></script>
	<script src="js/module/netcall.js"></script>
	<script src="js/module/netcall_meeting.js"></script>
	<script src="js/module/netcall_ui.js"></script>
	<script src="js/module/dialog_call_method.js"></script>
	<script src="js/main.js?v=2"></script>
	<script src="../3rd/vue.min.js"></script>
	<script id="whiteboard-template" type="text/x-template">
		<div v-show="display" class="function-box whiteboard">
			<div v-if="banner.length" class="whiteboard-banner">
				<p>{{ banner }}</p>
			</div>
			<div v-if="tip.length" class="whiteboard-mask">
				<p>{{ tip }}</p>
			</div>
			<div v-if="bottomTip.length" class="whiteboard-bottom-tip">
				<p>{{ bottomTip }}</p>
			</div>
			<!-- P2P呼叫界面 -->
			<div v-if="!connected && isCalling">
				<img :src="avatar || 'images/default-icon.png'" alt="用户头像" class="avatar">
				<div class="nick">{{ nick }}</div>
				<div class="tip">{{ this.statusTip || '正在邀请对方，请稍候...' }} </div>
				<div class="op">
					<button @click="hangup" class="pure-button hangup">取消</button>
				</div>
			</div>
			<!-- P2P被叫界面 -->
			<div v-if="!connected && isCalled">
				<img :src="avatar || 'images/default-icon.png'" alt="用户头像" class="avatar">
				<div class="nick">{{ nick }}</div>
				<div class="tip">{{ this.statusTip || '邀请你进行白板互动' }}</div>
				<div v-if="needAgent" class="op download">
					<div>
						<button @click="downloadAgent" class="pure-button accept">下载插件</button>
					</div>
					<div>
						<button @click="reject" class="pure-button hangup">拒绝</button>
					</div>
					<div>
						<p>拒绝调用插件申请会导致无法唤起插件</p>
						<p>需重启浏览器</p>
					</div>
				</div>
				<div v-else class="op">
					<button @click="accept" class="pure-button accept">
						<span v-if="!waiting">接受</span>
						<span v-else class="netcall-icon-checking"></span>
					</button>
					<button @click="reject" class="pure-button hangup">拒绝</button>
				</div>
			</div>
			<!-- P2P白板界面 -->
			<div v-show="connected" class="whiteboard-ui pure-g">
				<div ref="container" class="pure-u-1-2 whiteboard-container"></div>
				<div class="pure-u-1-2 control-panel">
					<div class="pure-g btns">
						<div class="pure-u-1-3 control-btn">
							<div class="btn-tip">撤销</div>
							<span @click="undo" class="icon-undo"></span>
						</div>
						<div class="pure-u-1-3 control-btn">
							<div class="btn-tip">清除全部笔迹</div>
							<span @click="clear" class="icon-clear"></span>
						</div>
						<div class="pure-u-1-3 control-btn">
							<div v-if="!canWeUseMicro" class="alert-icon">!</div>
							<div v-if="!canWeUseMicro" class="btn-tip">麦克风不可用</div>
							<div v-else-if="isMicroOpen" class="btn-tip">关闭己方语音</div>
							<div v-else class="btn-tip">开启己方语音</div>
							<span @click="switchAudio" class="icon-mic" :class="{ 
								close: !isMicroOpen,
								disable: !canWeUseMicro
							}"></span>
						</div>
					</div>
					<button @click="hangup" class="pure-button hangup">结束</button>
				</div>
			</div>
			<div class="dialogs"></div>
		</div>
	</script>
	<script src="js/module/whiteboard.js"></script>
</body>

</html>