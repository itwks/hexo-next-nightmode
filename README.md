# Hexo NexT Night Mode

Add Night Mode support for NexT.

## Install

### Via Github

```bash
npm i https://github.com/itwks/hexo-next-nightmode
```

## Usage

### Configure

You can add follow options in **hexo** or **theme** `_config.yml`.

```yml
next_nightmode:
  enable: false
  # FontAwesome or ForkAwesome icon in sidebar button.
  icon: adjust
  # If true, when you disable Night Mode, Hexo will show warning messages in your console.
  reminder: false
  # Debugger for alpha option below.
  debugger: false
```

## Custom

NexT supports customizing styles, so you can custom dark mode style by yourself, check `css/scheme.styl` then do your job.

Also if you don't like this plugin based on JavaScript, you can use a simple CSS method.

```css
@media (prefers-color-scheme: dark) {
  /* do everything yo want */
}
```
