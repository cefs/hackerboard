module ApplicationHelper
	#display a inline error message for tha attribute
	#
	# <%=error_for record, attribute%>
	#
	def error_for(record, attribute)
		message = record.errors[attribute].first
		content_tag :span, message, :class => "error" if message
	end
end
