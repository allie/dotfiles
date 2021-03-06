module.exports = {
	config: {
		updateChannel: 'stable',

        fontSize: 14,
		fontFamily: '"OperatorMono Nerd Font", "Inconsolata for Powerline", monospace',
		fontWeight: 'normal',
		fontWeightBold: 'bold',

        css: '.terminal, .term_fit:not(.term_term) { opacity: 1 !important; }',
		termCSS: '',
		padding: '12px 14px',

        cursorColor: 'rgba(248,28,229,0.8)',
		cursorAccentColor: '#000',
		cursorShape: 'BLOCK',
		cursorBlink: false,
		foregroundColor: '#fff',
		backgroundColor: '#000',
		selectionColor: 'rgba(248,28,229,0.3)',
		borderColor: '#333',

		colors: {
			black: '#000000',
			red: '#C51E14',
			green: '#1DC121',
			yellow: '#C7C329',
			blue: '#0A2FC4',
			magenta: '#C839C5',
			cyan: '#20C5C6',
			white: '#C7C7C7',
			lightBlack: '#686868',
			lightRed: '#FD6F6B',
			lightGreen: '#67F86F',
			lightYellow: '#FFFA72',
			lightBlue: '#6A76FB',
			lightMagenta: '#FD7CFC',
			lightCyan: '#68FDFE',
			lightWhite: '#FFFFFF',
		},

        showHamburgerMenu: '',
		showWindowControls: '',

		shell: '/bin/zsh',
		shellArgs: ['--login'],
		env: {},
		
		bell: false,
		copyOnSelect: false,
		defaultSSHApp: true,
	},
	
	plugins: [
		'hyper-dracula'
	],
	localPlugins: [],

	keymaps: {
	},
};
