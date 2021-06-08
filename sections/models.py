from django.db import models
# from django.contrib.admin.widgets import AdminDateWidget

# Create your models here.

class Home(models.Model):
    class Meta:
        verbose_name_plural = 'Home'

    version_title = models.CharField(max_length=30, null=True, blank=False)
    small_text = models.CharField(max_length=10, null=True, blank=True)
    large_text = models.CharField(max_length=10, null=True, blank=True)
    career_title = models.CharField(max_length=30, null=True, blank=False)

    def __str__(self):
        if self.version_title:
            return self.version_title
        return (f'{self.id}')

class About(models.Model):
    class Meta:
        verbose_name_plural = 'About'

    version_title = models.CharField(max_length=30, null=True, blank=False)
    about_text = models.TextField(null=True, blank=False)
    display_picture = models.ImageField(upload_to="dp")
    person_name = models.CharField(max_length=30, null=True, blank=False)

    def __str__(self):
        if self.version_title:
            return self.version_title
        return (f'{self.id}')

class Project(models.Model):
    class Meta:
        verbose_name_plural = 'Projects'

    title = models.CharField(max_length=20, null=False, blank=False)
    started_at = models.DateField(null=True, blank=False)
    finished_at = models.DateField(null=True, blank=True)
    currently_working_on = models.BooleanField(verbose_name="Present?", null=True, blank=True, default=True)
    description = models.TextField(max_length=250, null=False, blank=False, default="Description here")
    preview_image = models.ImageField(upload_to="project-preview-images", null=True, blank=True)
    website_link = models.CharField(max_length=100, null=True, blank=True, default="www.website.com")
    github_link = models.CharField(max_length=100, null=True, blank=True, default="github.com/user/repo")
    # created_at = models.DateField(widget=AdminDateWidget() ,null=False)

    def __str__(self):
        return self.title.capitalize()
    
# def tech_stack_path(instance, filename):
#     # file will be uploaded to MEDIA_ROOT/product<id>/<filename>
#     return 'project_{0}/{1}'.format(instance.project.id, filename)

class TechStack(models.Model):
    project = models.ForeignKey(Project, on_delete=models.CASCADE, related_name="tech_stacks", null=True, blank=True)
    stack_name = models.CharField(max_length=20, null=True, blank=True)

    def __str__(self):
        try:
            return (f'{self.stack_name}')
        except:
            return ""

class JSChallenge(models.Model):
    pass

class Contact(models.Model):
    class Meta:
        verbose_name_plural = 'Contact'

    version_title = models.CharField(max_length=30, null=False, blank=False, default="Sample")
    logo = models.ImageField(upload_to="logos", null=True, blank=True)
    mobile_number = models.CharField(max_length=15, null=False, blank=False, default="09xxxxxxxxx")
    email = models.CharField(max_length=20, null=False, blank=False, default="youremail@gmail.com")

    def __str__(self):
        if self.version_title:
            return self.version_title
        return (f'{self.id}')