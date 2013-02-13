
build: components bootstrap-alerts.css
	@component build --dev

bootstrap-alerts.css: bootstrap-alerts.less
	node_modules/.bin/recess bootstrap-alerts.less --compile > bootstrap-alerts.css

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-alerts.css

.PHONY: clean
