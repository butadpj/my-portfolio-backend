# Generated by Django 3.1.8 on 2021-06-08 17:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sections', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='techstack',
            old_name='tech',
            new_name='stack_name',
        ),
    ]
