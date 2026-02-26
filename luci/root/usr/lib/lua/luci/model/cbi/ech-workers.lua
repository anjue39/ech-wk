local m, s, o
m = Map("ech-workers", "ECH Workers Proxy", "K3 ARMv7 现场编译版")
s = m:section(TypedSection, "config")
s.anonymous = true
s:option(Flag, "enabled", "启用服务")
s:option(Value, "server_addr", "Worker 域名 (如: worker.xxx.dev)")
s:option(Value, "listen_addr", "本地监听端口").default = "0.0.0.0:30001"
return m
