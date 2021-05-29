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
        verbose_name_plural = 'Project'

    version_title = models.CharField(max_length=30, null=False, blank=False, default="Sample")
    title = models.CharField(max_length=20, null=False, blank=False)
    created_at = models.DateTimeField(null=True)
    description = models.CharField(max_length=100, null=False, blank=False, default="Description here")
    preview_image = models.ImageField(upload_to="project-preview-images", null=True, blank=True)
    website_link = models.CharField(max_length=30, null=True, blank=True, default="www.website.com")
    github_link = models.CharField(max_length=30, null=True, blank=True, default="github.com/user/repo")
    # created_at = models.DateField(widget=AdminDateWidget() ,null=False)

    def __str__(self):
        if self.version_title:
            return self.version_title
        return (f'{self.id}')
    
def tech_stack_images_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/product<id>/<filename>
    return 'project_{0}/{1}'.format(instance.project.id, filename)

class TechStackImages(models.Model):
    project = models.ForeignKey(Project, on_delete=models.CASCADE, related_name="tech_stack_images", null=True, blank=True)
    image = models.ImageField(upload_to=tech_stack_images_path, null=True, blank=True)

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