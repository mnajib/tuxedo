<?lua local form = require "sailor.form" ?>
<h2>Create post</h2>
<?lua if saved == false then ?>
	There was an error while saving.
<?lua page:inspect(post.errors)
	end ?>
<form method="post"> 
	<div class="form-group">
		<label>author:</label>
		<?lua page:print( form.text(post,'author_id', 'class="form-control" placeholder="author_id"') ) ?>
		<span class="help-block"> <?lua page:print( post.errors.author_id or '') ?> </span>
	</div>
	<div class="form-group">
		<label>title:</label>
		<?lua page:print( form.text(post,'title', 'class="form-control" placeholder="title"') ) ?>
		<span class="help-block"> <?lua page:print( post.errors.title or '') ?> </span>
	</div>
	<div class="form-group">
		<label>subtitle:</label>
		<?lua page:print( form.text(post,'subtitle', 'class="form-control" placeholder="subtitle"') ) ?>
		<span class="help-block"> <?lua page:print( post.errors.subtitle or '') ?> </span>
	</div>
	<div class="form-group">
		<label>background image:</label>
		<?lua page:print( form.text(post,'bg_img', 'class="form-control" placeholder="bg_img"') ) ?>
		<span class="help-block"> <?lua page:print( post.errors.bg_img or '') ?> </span>
	</div>
	<div class="form-group">
		<label>post:</label>
		<?lua page:print( form.textarea(post,'body', 'class="form-control" placeholder="body"') ) ?>
		<span class="help-block"> <?lua page:print( post.errors.body or '') ?> </span>
	</div>
	<div class="form-group">
		<label>publish:</label>
		<?lua page:print( form.checkbox(post, 'published', '', false, 'class="form-control" placeholder="published"') ) ?>
		<span class="help-block"> <?lua page:print( post.errors.published or '') ?> </span>
	</div>
	<input type="submit" class="btn btn-primary"/>
</form> 
<br/>
<a href="<%= sailor.make_url('post/index')%>"><- Back to View All</a>
