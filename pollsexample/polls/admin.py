from pollsexample.polls.models import Poll, Choice
from django.contrib import admin

class ChoiceInline(admin.TabularInline):
    model = Choice
    extra = 3

class PollAdmin(admin.ModelAdmin):
    fieldsets = [
            (None, {'fields': ['question']}),
            ('Date', {'fields': ['pub_date'], 'classes': ['collapse']})
    ]
    list_display = ('pub_date', 'question')
    list_filter = ['pub_date']
    search_fields = ['question']
    date_hierarchy = 'pub_date'
    inlines = [ChoiceInline]

admin.site.register(Poll, PollAdmin)
admin.site.register(Choice)
