import { defineConfig } from "vite";
import react from "@vitejs/plugin-react-swc";

// https://vitejs.dev/config/
export default defineConfig({
	plugins: [react()],
	//ホストマシンからアクセスできるようにするために、serverオプションに host: "0.0.0.0" と設定
	server: {
		host: "0.0.0.0",
	},
});
